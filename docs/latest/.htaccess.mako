<%
    release_history = zf.config.release_data
    release_milestones = zf.config.release_milestones

    if 'beta' in release_milestones:
        milestone = 'beta'
    elif 'current' in release_milestones:
        milestone = 'current'
    elif 'maintenance' in release_milestones:
        milestone = 'maintenance'
    else:
        # ack! no releases
        return


    release_rec = release_history[release_milestones[milestone]]

%>

RewriteEngine On

RewriteRule (.*) ${release_rec['docs']}$1
