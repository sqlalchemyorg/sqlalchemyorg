<%!
    in_docs = True
%>
<%
self.attr.site_base = site_base = bf.config.site.url
self.attr.docs_base = docs_base = bf.config.docs_url
self.attr.bb_base = bb_base = bf.config.bb_url
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
    <title>
        <%text>
        <%block name="head_title">
        SQLAlchemy - The Database Toolkit for Python
        </%block>
        </%text>
    </title>

    <!-- head pulled in from sphinx build -->
    <%text>
    <%block name="headers"/>
    </%text>
    <!-- end head pulled in from sphinx build -->

    <!-- sqlalchemy.org docs base head -->
    <%include file="/head.mako" args="site_base=self.attr.site_base, docs_base=self.attr.docs_base, bb_base=self.attr.bb_base"/>
    <%include file="/tracking.mako"/>
    <!-- end sqlalchemy.org docs base head -->

</head>

<body>

<div id="wrap">

<%include file="header.mako" args="section='docs', site_base=self.attr.site_base, docs_base=self.attr.docs_base, bb_base=self.attr.bb_base" />

<div id="main-body" class="docs">

<div id="docs">
<%text>
${next.body()}
</%text>
</div>

</div> <!-- end #main-body -->

<%text>
<%block name="footer">
</%text>
<%include file="footer.mako" args="site_base=self.attr.site_base, docs_base=self.attr.docs_base"/>
<%text>
</%block>
</%text>

</div> <!-- end #wrap -->

</body>
</html>








