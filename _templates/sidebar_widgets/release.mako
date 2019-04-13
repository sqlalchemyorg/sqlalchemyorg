<%
    release_history = zf.config.release_data
    release_milestones = zf.config.release_milestones

    if 'current' in release_milestones:
        milestone = 'current'
    elif 'maintenance' in release_milestones:
        milestone = 'maintenance'
    else:
        # ack! no releases
        return


%>

<%def name="release(milestone, name)"><%
    try:
        release_rec = release_history[release_milestones[milestone]]
    except KeyError:
        return ""
    latest_rec = release_rec['latest']
%>
    <div class="release_panel">
    <a href="/download.html"><b>${latest_rec['version']}</b></a> -
        ${latest_rec['release_date'].strftime("%Y-%m-%d")} -
        <a href="${latest_rec['announcement_url']}">announce</a>
    <br/>
    <a href="${latest_rec['changelog']}">changes</a> |
    <a href="${release_rec['migration_url']}">migration notes</a> |
    <a href="${release_rec['docs']}">docs</a>
    </div>
</%def>

<h3>Current Releases</h3>

% if 'beta' in release_milestones:
    ${release("beta", "Beta Release")}
% endif

${release(milestone, "Current Release")}

% if 'maintenance' in release_milestones and 'beta' not in release_milestones:
    ${release("maintenance", "Previous Series")}
% endif

% if 'development' in release_milestones:

<%
    dev_version = release_milestones['development']
    dev_release = release_history[dev_version]
%>

<div class="release_panel">
<strong>${dev_version}</strong> - next major series
<br/>
<a href="${dev_release['migration_url']}">${dev_release['migration_title']}</a> |
<A href="${dev_release['docs']}">docs</a>
</div>
% endif