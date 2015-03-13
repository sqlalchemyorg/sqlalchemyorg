<%
    release_history = bf.config.release_data
    release_milestones = bf.config.release_milestones

    if 'current' in release_milestones:
        milestone = 'current'
    elif 'maintenance' in milestones:
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
    <h3>${name} Release</h3>

    <a href="/download.html"><b>${latest_rec['version']}</b></a>
    <br/>
    <a href="${latest_rec['announcement_url']}">Release Announcement</a> |
    <a href="${release_rec['migration_url']}">What's New in ${release_rec['major_version']}?</a> |
    <a href="${latest_rec['changelog']}">Changelog</a> |
    <a href="${release_rec['docs']}">docs</a>
    <br/>
    Released ${latest_rec['release_date'].strftime("%B %d, %Y")}
    <br/><br/>
</%def>

${release(milestone, "Current")}

% if 'beta' in release_milestones:
    ${release("beta", "Beta")}
% elif 'development' in release_milestones:

<%
    dev_version = release_milestones['development']
    dev_release = release_history[dev_version]
%>

<h3>Upcoming Releases</h3>

<strong>${dev_version}</strong>
<br/>
<a href="${dev_release['migration_url']}">${dev_release['migration_title']}</a> |
<A href="${dev_release['docs']}">docs</a>

% endif