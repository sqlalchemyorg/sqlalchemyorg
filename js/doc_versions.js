
var doc_versions = [
      {
        "version":"development",
        "slug":"latest"
      },
      {
        "version":"Version 0.9",
        "slug":"rel_0_9"
      },
      {
        "version":"Version 0.8",
        "slug":"rel_0_8",
        "latest_warning": true
      },
       {
        "version":"Version 0.7",
        "slug":"rel_0_7",
        "latest_warning": true
      }
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
  if (doc_version) {
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
