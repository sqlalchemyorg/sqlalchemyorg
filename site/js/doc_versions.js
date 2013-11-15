
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
        "slug":"rel_0_8"
      },
       {
        "version":"Version 0.7",
        "slug":"rel_0_7"
      },
      {
        "version":"Version 0.6",
        "slug":"rel_0_6"
      }
    ];

function renderDocVersions() {

    $('#version_menu,.version-listing').empty();
    for (key in doc_versions) {
        obj = doc_versions[key];
        current_url = docs_base + "/en/" + obj.slug + "/";
        $("#version_menu,.version-listing").append('<li><a href="' + current_url + '">' + obj.version + '</a></li>');
    }
}

$(document).ready(function() {
    renderDocVersions();
});
