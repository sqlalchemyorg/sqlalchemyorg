<%page args="site_base, docs_base, bb_base, css=True"/>
<link rel="shortcut icon" href="${site_base}/favicon.ico" type="image/x-icon"/>
<link href='//fonts.googleapis.com/css?family=Source+Sans+Pro:400,600,400italic' rel='stylesheet' type='text/css'/>
% if css:
    <link rel="stylesheet" type="text/css" media="all" href="${site_base}/css/bootstrap.min.css"/>
	<link rel="stylesheet" type="text/css" media="all" href="${site_base}/css/site.css"/>
	<link rel="stylesheet" type="text/css" media="all" href="${site_base}/css/bannerads.css"/>
	<link rel="stylesheet" type="text/css" media="print" href="${site_base}/css/print.css"/>
% endif

<script type="text/javascript">
var site_base='${site_base}';
var docs_base='${docs_base}';
</script>

