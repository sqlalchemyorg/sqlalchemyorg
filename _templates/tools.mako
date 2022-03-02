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

<%def name="render_nav_docs_dropdown(docs_base)"><%
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
            <a class="dropdown-item" href="${'%s/en/%s/' % (docs_base, version['slug'])}">
                <span class="ps-2">${version['version']}</span>
            </a>
        </li>
    %endfor
    <li><hr class="dropdown-divider"></li>
</%def>

<%def name="vertical_nav()">
<div class="card bg-sa-grey">
    <div class="card-body">
        <ul class="nav flex-column">
        ${caller.body()}
        </ul>
    </div>
</div>
</%def>

<%def name="vertical_nav_item(url, url_text, content=None)">
<li class="nav-item">
    <a class="nav-link d-inline fw-bold" href="${url}">${url_text}</a>
    % if content:
        ${content}
    % endif
</li>
</%def>