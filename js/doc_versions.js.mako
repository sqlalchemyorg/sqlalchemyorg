<%
    release_history = bf.config.release_data
    release_milestones = bf.config.release_milestones

    display_versions = [
        vr for vr in [
          release_history[vers] for vers in reversed(sorted(release_history))
        ]
        if vr.get('docs', None)
    ]

%>

var doc_versions = [
% for vers_rec in display_versions:
  {
    "version": "${
      'development' \
      if vers_rec['milestone'] == 'development' \
      else 'Version %s' % vers_rec['major_version']
    }",
    "slug": "${vers_rec['doc_plaque']}"
    ${
        ',"latest_warning": true' \
        if vers_rec['milestone'] in ('security', 'eol')\
        else ''
    }
  }${"," if not loop.last else ""}
% endfor
];

var _version_lookup = {};
for (var key in doc_versions) {
    version = doc_versions[key];
    _version_lookup[version.slug] = version;
}

function renderDocVersions() {

    $('#version_menu,.version-listing').empty();
    for (var key in doc_versions) {
        obj = doc_versions[key];
        current_url = docs_base + "/en/" + obj.slug + "/";
        $("#version_menu,.version-listing").append('<li><a href="' + current_url + '">' + obj.version + '</a></li>');
    }
}


$(document).ready(function() {
    renderDocVersions();
});
