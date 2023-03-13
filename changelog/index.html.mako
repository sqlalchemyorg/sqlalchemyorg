<%inherit file="/base.mako"/>
<%!
    section = 'changelog'
%>

<%block name="head_title">
Changes - SQLAlchemy
</%block>

<h1>Changelogs</h1>

<p>
	This page should be automatically redirected.  If not,
	please navigate to the <a href="/docs/latest/changelog/">index of all changelogs</a>.
</p>

<script>

	var changelog = location.search;
    var match_change_file = /.*CHANGES_(\d+)_(\d+)(?:_(\d+))?(beta\d|[a-z]\d|.post\d)?/;
	if (changelog) {
		match = match_change_file.exec(changelog);
		if (match) {
			var majorversion = match[1];
			var minorversion = match[2];
			var point = match[3];
			if (!point) {
				if (majorversion == "0" && minorversion == "6") {
					point = "";
				}
				else {
					point = "0";
				}
			}
			var modifiers = match[4] || '';
			var newfile = "/docs/latest/changelog/";
			newfile += "changelog_" + majorversion + minorversion;
			newfile += ".html#change-" + majorversion + "." + minorversion;
			if (point) {
				newfile += "." + point;
			}
			newfile += modifiers;
			//console.log(newfile);
			document.location.href = newfile;
		}
	}

</script>
