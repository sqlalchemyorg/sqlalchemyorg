<%
    release_history = bf.config.release_data
    release_milestones = bf.config.release_milestones

    display_versions = [
        vr for vr in [
          release_history[vers] for vers in reversed(sorted(release_history))
        ]
        if vr.get('docs', None)
    ]

    early_development = 'early_development' in release_milestones
    latest = display_versions[0]
    latest_branch = latest['git_tag'] if early_development else 'master'
%>\
% for vers_rec in display_versions:
${latest_branch if vers_rec is latest else vers_rec['git_tag']}@${"latest" if vers_rec is latest else vers_rec['git_tag']} \
% endfor