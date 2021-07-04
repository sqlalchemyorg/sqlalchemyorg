<%!
    import syntax_highlight
    import zeekofile_zf as zf
%>
<%def name="code()"><%
    return syntax_highlight.highlight_site(capture(caller.body))
%></%def>
<%def name="markdown()"><%
	return zf.filter.run_chain('markdown', capture(caller.body))
%></%def>

<%def name="version(site_base)"><%
    display_versions = [
        ref_data for _, ref_data in reversed(sorted(zf.config.release_data.items()))
        if ref_data.get('docs', None)
    ]
    data = [
        {
            'version': 'Version %s%s' % (
                vers_rec['major_version'],
                " (%s)" % vers_rec['milestone'] if vers_rec['milestone'] in ('development', 'beta') else ""
            ),
            'slug': vers_rec['major_vers_plaque'],
        }
        for vers_rec in display_versions
    ]
%>
    <li><hr class="dropdown-divider"></li>
    % for version in data:
        <li>
            <a class="dropdown-item" href="${'%s/en/%s/' % (site_base, version['slug'])}">
                <span class="ps-2">${version['version']}</span>
            </a>
        </li>
    %endfor
    <li><hr class="dropdown-divider"></li>
</%def>