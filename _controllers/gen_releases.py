from zeekofile.cache import zf
import json
import re
import requests
from packaging.version import parse
import datetime

# ==============================================================================

# generates a group like this:
# 0.9.8 | 0.9, 0, 9, 8 | SqlAlchemyVersion(Major.Minor), Major, Minor, Release
RE_release = re.compile(r"^((\d)\.(\d))(?:\.(\d+))?((?:a|b|c|rc)\d)?$", re.I | re.X)

# ==============================================================================


# all the releases are in here...
pypi_url_json = "https://pypi.python.org/pypi/SQLAlchemy/json"

# ==============================================================================

# development: development series in main, no betas released
# beta: development series in main, betas released
# current: current release
# maintenance: optional category for "prior to current"
# eol: end of life, one version  must be marked this way

# we will generally have one of the following combinations:
# eol, maintenance, current
# eol, current, beta
# eol, current, development
release_milestones = {
    'beta': '2.0',
    'current': '1.4',
    'maintenance': '1.3',
    'eol': '1.2',
}

lowest_doc_version = '1.2'
eol = release_milestones['eol']

# this is the lowest doc version for which
# we will link to "What's New?" in the release status
# section of the download page
lowest_migration_version = '1.0'


def run():
    r = requests.get(pypi_url_json)
    pypi_data = json.loads(r.content)

    #with open("sqla_sample.json") as f:
    #   pypi_data = json.load(f)

    zf.config.release_milestones = milestones = dict(
        (key, parse(version))
        for key, version in release_milestones.items()
    )

    zf.config.release_data = _gen_release_data(pypi_data, milestones)


def _gen_release_data(pypi_data, milestones):
    # limit the releases to real releases
    # we don't want rc/alpha/beta

    releases = dict(
        (parse(vers), pypi_data['releases'][vers])
        for vers in pypi_data['releases']
    )
    release_keys = sorted(
        vers for vers in releases
    )
    current_version = milestones['current']

    if 'development' in milestones:
        vers = development_version = milestones['development']
        release_keys.append(vers)
    else:
        development_version = None

    if 'beta' in milestones:
        beta_version = milestones['beta']
    else:
        beta_version = None

    lowest_doc_version_parsed = parse(lowest_doc_version)
    lowest_migration_version_parsed = parse(lowest_migration_version)
    eol_parsed = parse(eol)

    version_to_milestone = dict(
        (v, k) for k, v in milestones.items()
    )

    release_history = {}
    for release in release_keys:
        if release == development_version:
            major_version = development_version
        else:
            rel = RE_release.match(str(release))
            if rel:
                major_version = parse(rel.group(1))
            else:
                continue

        if major_version not in release_history:
            # major_vers_plaque: digits only, like 10, 11, 12, 13
            # git_tag: like rel_1_0, rel_1_1, rel_1_2, rel_1_3

            major_vers_plaque = str(major_version).replace('.', "")
            major_vers_underscore = str(major_version).replace('.', "_")
            git_tag = "rel_%s" % major_vers_underscore

            if release == development_version:
                git_location = 'main'
            elif major_version == beta_version:
                git_location = 'main'
            elif major_version == current_version:
                # current version goes in "latest" if there isn't
                # a beta version
                if beta_version is None:

                    if development_version is None:
                        git_location = 'main'
                    else:
                        git_location = git_tag
                else:
                    git_location = git_tag

            else:
                git_location = git_tag

            tokens = {
                'major_vers_plaque': major_vers_plaque,
                'underscore': major_vers_underscore,
                'version': major_version,
            }

            release_history[major_version] = {
                'major_version': major_version,
                'major_vers_plaque': major_vers_plaque,
                'first': None,
                'latest': None,
                'git_tag': git_tag,
                'git_location': git_location,
                'milestone':
                    version_to_milestone[major_version]
                    if major_version >= eol_parsed else 'eol',
                'releases': {},
                'docs': "/docs/%(major_vers_plaque)s/" %
                        tokens
                        if major_version >= lowest_doc_version_parsed
                        else None,
                'migration_url':
                    '/docs/%(major_vers_plaque)s/changelog/'
                    'migration_%(major_vers_plaque)s.html' %
                    tokens
                    if major_version >= lowest_migration_version_parsed
                    else None,
                'migration_title': "What's New in %(version)s?" % tokens
                if major_version >= lowest_migration_version_parsed
                else None

            }

        if release != development_version:
            release_rec = releases[release][0]

            upload_datetime = datetime.datetime.strptime(
                release_rec['upload_time'], "%Y-%m-%dT%H:%M:%S")

            release_history[major_version]['releases'][release] = {
                'version': release,
                'release_date': upload_datetime,
                'url': "https://pypi.python.org/pypi/SQLAlchemy/%s" % release,
                'md5_digest': release_rec['md5_digest'],
                'changelog': (
                    '/changelog/CHANGES_%s' %
                    str(release).replace('.', "_")),
                'announcement_url':
                    '/blog/%(year).4d/%(month).2d/%(day).2d/'
                    'sqlalchemy-%(version)s-released/' % {
                        'year': upload_datetime.year,
                        'month': upload_datetime.month,
                        'day': upload_datetime.day,
                        'version': release}
            }

    # now go through the history to find the first and latest
    major_versions = sorted(release_history)
    for idx, major_version in enumerate(major_versions):
        vers_rec = release_history[major_version]
        releases = sorted(vers_rec['releases'])
        if releases:
            vers_rec['first'] = vers_rec['releases'][releases[0]]
            vers_rec['latest'] = latest = vers_rec['releases'][releases[-1]]
            vers_rec['changelog'] = latest['changelog']
        vers_rec['previous_version'] = \
            major_versions[idx - 1] if idx > 0 else None

    return release_history
