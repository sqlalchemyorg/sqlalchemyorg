<%
    release_history = zf.config.release_data
    release_milestones = zf.config.release_milestones

    release_status = {}
    for token, major_version in release_milestones.items():
        is_prerelease = token in ('beta', 'development')
        is_beta = token in ('beta', )
        is_legacy = token in ('maintenance', 'security', 'eol')
        is_current = token in ('current,')

        version_history = release_history[major_version]
        for vers in version_history['releases']:
            release_status[str(vers)] = {
                "token": token,
                "is_beta_version": is_beta,
                "is_prerelease_version": is_prerelease,
                "is_legacy_version": is_legacy,
                "is_current_version": is_current,
                "major_vers_plaque": version_history["major_vers_plaque"]
            }
        release_status[str(major_version)] = {
            "token": token,
            "is_beta_version": is_beta,
            "is_prerelease_version": is_prerelease,
            "is_legacy_version": is_legacy,
            "is_current_version": is_current,
            "major_vers_plaque": version_history["major_vers_plaque"]
        }


%>

release_status = ${repr(release_status)};



def setup_context(context):
    # add variables if not present, such
    # as if local test of READTHEDOCS variable
    if 'MEDIA_URL' not in context:
        context['MEDIA_URL'] = ""  # "http://media.readthedocs.org/"
    if 'slug' not in context:
        context['slug'] = context['project'].lower()
    if 'url' not in context:
        context['url'] = "/some/test/url"
    if 'current_version' not in context:
        context['current_version'] = "latest"
    if 'html_theme' not in context:
        context['html_theme'] = ''

    if 'name' not in context:
        context['name'] = context['project'].lower()

    context['rtd'] = True
    context['toolbar'] = True
    context['base'] = "docs_adapter.mako"

    try:
        release_status_rec = release_status[context['release']]
    except KeyError:
        release_status_rec = release_status[context['version']]

    context['is_legacy_version'] = release_status_rec['is_legacy_version']
    context['is_prerelease_version'] = release_status_rec['is_prerelease_version']
    context['is_current_version'] = release_status_rec['is_current_version']
    context['is_beta_version'] = release_status_rec['is_beta_version']
    context["major_vers_plaque"] =release_status_rec["major_vers_plaque"]

    context['zip_url'] = "%s/%s/sqlalchemy-%s.zip" % (
        "${zf.config.docs_url}",
        release_status_rec["major_vers_plaque"],
        release_status_rec["major_vers_plaque"]
    )

    context['pdf_url'] = None
    #context['pdf_url'] = "%spdf/%s/%s/%s.pdf" % (
    #        context['MEDIA_URL'],
    #        context['slug'],
    #        context['current_version'],
    #        context['slug']
    #)


