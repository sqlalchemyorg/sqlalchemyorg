def setup_context(context):
    # add variables if not present, such
    # as if local test of READTHEDOCS variable
    if 'MEDIA_URL' not in context:
        context['MEDIA_URL'] = "http://media.readthedocs.org/"
    if 'slug' not in context:
        context['slug'] = context['project'].lower()
    if 'url' not in context:
        context['url'] = "/some/test/url"
    if 'current_version' not in context:
        context['current_version'] = "latest"

    if 'name' not in context:
        context['name'] = context['project'].lower()

    context['rtd'] = True
    context['toolbar'] = True
    context['base'] = "docs_adapter.mako"

    context['pdf_url'] = "%spdf/%s/%s/%s.pdf" % (
            context['MEDIA_URL'],
            context['slug'],
            context['current_version'],
            context['slug']
    )

    script_files = context['script_files']
    newscript = []
    # strip out script files that RTD wants to provide
    for script in script_files:
        for token in ("jquery.js", "underscore.js", "doctools.js"):
            if token in script:
                break
        else:
            newscript.append(script)
    script_files[:] = newscript

