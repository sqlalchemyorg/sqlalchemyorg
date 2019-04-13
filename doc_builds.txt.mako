<%
    release_history = zf.config.release_data
    release_milestones = zf.config.release_milestones

    display_versions = [
        vr for vr in [
          release_history[vers] for vers in reversed(sorted(release_history))
        ]
        if vr.get('docs', None)
    ]

%>\
% for vers_rec in display_versions:
${vers_rec['git_location']}@${vers_rec['major_vers_plaque']}
% endfor