<%page args="site_base, dropdown"/>
<%namespace name="tools" file="/tools.mako"/>
<%
    release_history = zf.config.release_data
    release_milestones = zf.config.release_milestones
%>

<%def name="major_version(milestone)">\
${release_history[release_milestones[milestone]]['major_version']}</%def>
<%def name="attrs()">
    % if dropdown:
        class="dropdown-item"
    %endif
</%def>

% if dropdown:
% if 'current' in release_milestones:
    <li><a ${attrs()} href="${site_base}/download.html#current">Current Release Series (${major_version("current")})</a></li>
% endif

% if 'maintenance' in release_milestones and 'beta' not in release_milestones:
    <li><a ${attrs()} href="${site_base}/download.html#maintenance">Maintenance Release (${major_version("maintenance")})</a></li>
% endif

% if 'beta' in release_milestones:
    <li><a ${attrs()} href="${site_base}/download.html#beta">Beta release (${major_version("beta")})</a></li>
% endif
    <li><a ${attrs()} href="${site_base}/download.html#development">Development Access</a></li>
    <li><a ${attrs()} href="${site_base}/download.html#license">License</a></li>
    <li><a ${attrs()} href="${site_base}/download.html#versions">Version Numbering</a></li>
    <li><a ${attrs()} href="${site_base}/download.html#relstatus">Release Status</a></li>
%else:
<%tools:vertical_nav>

% if 'current' in release_milestones:
    <%tools:vertical_nav_item url="#current" url_text="Current Release Series (${capture(major_version, 'current')})"/>
% endif

% if 'maintenance' in release_milestones and 'beta' not in release_milestones:
    <%tools:vertical_nav_item url="#maintenance" url_text="Maintenance Release (${capture(major_version, 'maintenance')})"/>
% endif

% if 'beta' in release_milestones:
    <%tools:vertical_nav_item url="#beta" url_text="Beta release (${capture(major_version, 'beta')})"/>
% endif
    <%tools:vertical_nav_item url="#development" url_text="Develoment Access"/>
    <%tools:vertical_nav_item url="#license" url_text="License"/>
    <%tools:vertical_nav_item url="#versions" url_text="Version Numbering"/>
    <%tools:vertical_nav_item url="#relstatus" url_text="Release Status"/>

</%tools:vertical_nav>

% endif