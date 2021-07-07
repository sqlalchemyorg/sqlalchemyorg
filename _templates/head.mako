<%page args="site_base, docs_base, bb_base, css=True"/>
<link rel="shortcut icon" href="${site_base}/favicon.ico" type="image/x-icon"/>
<link href='//fonts.googleapis.com/css?family=Source+Sans+Pro:400,600,400italic' rel='stylesheet' type='text/css'/>
% if css:
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" media="all" href="${site_base}/css/site.css"/>
	<link rel="stylesheet" type="text/css" media="all" href="${site_base}/css/carbonads.css"/>
	<link rel="stylesheet" type="text/css" media="print" href="${site_base}/css/print.css"/>
% endif

<script type="text/javascript">
var site_base='${site_base}';
var docs_base='${docs_base}';
</script>

<%include file="/seedanddew.mako"/>
