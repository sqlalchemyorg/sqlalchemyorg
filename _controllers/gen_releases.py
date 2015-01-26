from blogofile.cache import bf
import json
import re
import requests
from packaging.version import parse, LegacyVersion
import datetime

# ==============================================================================

# generates a group like this:
# 0.9.8 | 0.9, 0, 9, 8 | SqlAlchemyVersion(Major.Minor), Major, Minor, Release
RE_release = re.compile("^((\d)\.(\d))\.(\d+)$", re.I | re.X)

# ==============================================================================


# all the releases are in here...
pypi_url_json = "https://pypi.python.org/pypi/SQLAlchemy/json"

# ==============================================================================

release_milestones = {
    'development': '1.0',
    'current': '0.9',
    # 'maintenance': '0.9',
    'security': '0.8',
    'eol': '0.7',
}

lowest_doc_version = '0.7'
eol = '0.7'

# this is actually down to 0.4
# but I don't want those to be even linked
# this prominently
lowest_migration_version = '0.7'


def run():
    r = requests.get(pypi_url_json)
    pypi_data = json.loads(r.content)

    bf.config.release_milestones = milestones = dict(
        (key, parse(version))
        for key, version in release_milestones.items()
    )

    bf.config.release_data = _gen_release_data(pypi_data, milestones)


def _gen_release_data(pypi_data, milestones):
    # limit the releases to real releases
    # we don't want rc/alpha/beta

    releases = dict(
        (parse(vers), pypi_data['releases'][vers])
        for vers in pypi_data['releases']
    )
    release_keys = sorted(
        vers for vers in releases if not vers.is_prerelease
        and not isinstance(vers, LegacyVersion)
    )
    if 'development' in milestones:
        vers = development_version = milestones['development']
        release_keys.append(vers)

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
            major_version = parse(RE_release.match(str(release)).group(1))

        if major_version not in release_history:
            major_vers_plaque = str(major_version).replace('.', "")
            major_vers_underscore = str(major_version).replace('.', "_")
            git_tag = "rel_%s" % major_vers_underscore

            if release == development_version:
                local_doc_plaque = 'latest'
                rtd_plaque = 'latest'
            else:
                local_doc_plaque = major_vers_plaque
                rtd_plaque = git_tag

            tokens = {
                'plaque': major_vers_plaque,
                'underscore': major_vers_underscore,
                'version': major_version,
                'local_doc_plaque': local_doc_plaque
            }

            release_history[major_version] = {
                'major_version': major_version,
                'first': None,
                'latest': None,
                'git_tag': git_tag,
                'rtd_plaque': rtd_plaque,
                'milestone':
                    version_to_milestone[major_version]
                    if major_version >= eol_parsed else 'eol',
                'releases': {},
                'docs': "/docs/%(local_doc_plaque)s/" %
                        tokens
                        if major_version >= lowest_doc_version_parsed
                        else None,
                'migration_url':
                    '/docs/latest/changelog/'
                    'migration_%(plaque)s.html' %
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
                    '/blog/%(year)s/%(month)s/%(day)s/'
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
