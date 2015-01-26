<%
    release_history = bf.config.release_data
    release_milestones = bf.config.release_milestones

%>

var doc_versions = [
% for vers in list(reversed(sorted(release_history))):
  <%
    vers_rec = release_history[vers]
  %>
  % if vers_rec.get('docs', None):
  {
    "version": "${
      'development' \
      if vers_rec['milestone'] == 'development' \
      else 'Version %s' % vers_rec['major_version']
    }",
    "slug": "${vers_rec['rtd_plaque']}",
    "latest_warning": "${
      'true' \
      if vers_rec['milestone'] in ('security', 'eol') \
      else 'false'
    }",
  }${"," if not loop.last else ""}
  % endif
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

function renderLatestVersionButton() {
  if (typeof doc_version !== 'undefined') {
      if (_version_lookup[doc_version].latest_warning) {
          latest = _version_lookup['latest'];
          latest_url = document.URL.replace(doc_version, latest.slug);
          $("body").append(
            '<div class="read_latest_button">' +
            '<a id="read_latest_button" class="read_latest_button" href="' + latest_url + '">' +
            '> Read the latest version of this page</a>' +
            '</div>'
          );
          $("#read_latest_button").click(function () {
              document.location = document.URL.replace(doc_version, latest.slug);
              return false;
          });
      }

  }
}

$(document).ready(function() {
    renderDocVersions();
    renderLatestVersionButton();
});
