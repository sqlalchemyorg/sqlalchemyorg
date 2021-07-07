<%
    release_history = zf.config.release_data
    release_milestones = zf.config.release_milestones

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
      'Version %s%s' % (
            vers_rec['major_version'],
            " (%s)" % vers_rec['milestone']
            if vers_rec['milestone'] in ('development', 'beta')
            else ""
        )
    }",
    "slug": "${vers_rec['major_vers_plaque']}"
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

function empty(selector) {
    var nodes = document.querySelectorAll(selector);
    for (var i = 0; i < nodes.length; i++) {
        nodes[i].textContent = '';
    }
}

function append(selector, to_append) {
    var nodes = document.querySelectorAll(selector);
    for (var i = 0; i < nodes.length; i++) {
        nodes[i].innerHTML += to_append
    }
}

function renderDocVersions() {

    empty('#version_menu,.version-listing');
    for (var key in doc_versions) {
        obj = doc_versions[key];
        current_url = docs_base + "/en/" + obj.slug + "/";
        append("#version_menu,.version-listing", '<li><a href="' + current_url + '">' + obj.version + '</a></li>');
    }
}

document.addEventListener("DOMContentLoaded", function() { 
  renderDocVersions();
});
