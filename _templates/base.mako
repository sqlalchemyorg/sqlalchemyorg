<%!
    in_docs = False
%><%
in_docs = self.attr.in_docs
if in_docs:
    self.attr.site_base = site_base = bf.config.site_url
else:
    self.attr.site_base = site_base = ""
self.attr.docs_base = docs_base = bf.config.docs_url
self.attr.bb_base = bb_base = bf.config.bb_url
current_section = getattr(self.module, 'section', '')
if not current_section and in_docs:
    current_section = 'docs'
%><!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>
        <%block name="head_title">
        SQLAlchemy - The Database Toolkit for Python
        </%block>
    </title>


    <%block name="head">
        <!-- sqlalchemy.org head -->
        <%include file="/head.mako" args="site_base=self.attr.site_base, docs_base=self.attr.docs_base, bb_base=self.attr.bb_base"/>
        <!-- end sqlalchemy.org head -->
    </%block>

</head>

<body>

<div id="wrap">

<%include file="header.mako" args="section=current_section, docs_base=docs_base, site_base=site_base, bb_base=self.attr.bb_base" />

<div id="main-body" class="${current_section}">

% if not in_docs:

    <%block name="sidebar">
        <%include file="sidebar.mako" args="section=current_section" />
    </%block>

    <div id="content">
    <div id="content-inner">
    ${next.body(**pageargs)}
    </div>
    </div> <!-- end #content-inner, #content -->


% else:

    <div id="docs">
    ${next.body(**pageargs)}
    </div>

% endif

</div> <!-- end #main-body -->

<%include file="footer.mako" args="site_base=self.attr.site_base, docs_base=self.attr.docs_base"/>

</div> <!-- end #wrap -->

<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
<script type="text/javascript" src="${site_base}/js/doc_versions.js"></script>
<%include file="/tracking.mako"/>

<%block name="scripts"/>



</body>
</html>








