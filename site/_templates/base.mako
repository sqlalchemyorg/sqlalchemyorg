<%!
    in_docs = False
%>
<%
in_docs = self.attr.in_docs
if in_docs:
    self.attr.site_base = site_base = bf.config.site.url
else:
    self.attr.site_base = site_base = ""
self.attr.docs_base = docs_base = bf.config.docs_url
current_section = getattr(self.module, 'section', '')
if not current_section and in_docs:
    current_section = 'docs'
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
    <title>
        <%block name="head_title">
        SQLAlchemy - The Database Toolkit for Python
        </%block>
    </title>

    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>

    <%block name="head">
        <!-- sqlalchemy.org head -->
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <link rel="shortcut icon" href="${self.attr.site_base}/favicon.ico" type="image/x-icon">
        <link rel="stylesheet" type="text/css" media="all" href="${self.attr.site_base}/css/site2.css"></link>
        <link rel="stylesheet" type="text/css" media="print" href="${self.attr.site_base}/css/print.css"></link>
        <script type="text/javascript" src="${self.attr.site_base}/js/doc_versions.js"></script>

        <script type="text/javascript">
        var site_base='${self.attr.site_base}';
        var docs_base='${self.attr.docs_base}';
        </script>
        <%include file="/tracking.mako"/>
        <!-- end sqlalchemy.org head -->
    </%block>

</head>

<body>

<div id="wrap">

<%include file="header.mako" args="section=current_section, docs_base=docs_base, site_base=site_base" />

<div id="main-body" class="${current_section}">

% if not in_docs:

    <div id="content">
    <div id="content-inner">
    ${next.body(**pageargs)}
    </div>
    </div> <!-- end #content-inner, #content -->

    <%block name="sidebar">
        <%include file="sidebar.mako" args="section=current_section" />
    </%block>

% else:

    <div id="docs">
    ${next.body(**pageargs)}
    </div>

% endif

</div> <!-- end #main-body -->

<%include file="footer.mako" args="site_base=self.attr.site_base, docs_base=self.attr.docs_base"/>

</div> <!-- end #wrap -->

<%block name="scripts"/>

</body>
</html>








