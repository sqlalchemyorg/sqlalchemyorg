<%!
    in_docs = True
%>
<%
self.attr.site_base = site_base = bf.config.site.url
self.attr.docs_base = docs_base = bf.config.docs_url

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

    <%text>


    <link href='http://fonts.googleapis.com/css?family=Lato:400,700|Roboto+Slab:400,700' rel='stylesheet' type='text/css'>

    <%block name="css">
        <!-- begin iterate through SQLA css_files -->
        % for cssfile in default_css_files:
            <link rel="stylesheet" href="${pathto(cssfile, 1)}" type="text/css" />
        % endfor
        <!-- end iterate through SQLA css_files -->

        <link rel="stylesheet" type="text/css" media="all" href="${site_base}/css/site2.css"></link>
        <link rel="stylesheet" type="text/css" media="print" href="${site_base}/css/print.css"></link>

        <!-- begin iterate through sphinx environment css_files -->
        % for cssfile in css_files:
            <link rel="stylesheet" href="${pathto(cssfile, 1)}" type="text/css" />
        % endfor
        <!-- end iterate through sphinx environment css_files -->
    </%block>

    <%block name="headers">

    <!-- RTD <head> via SQLAlchemy adapter -->
    <script type="text/javascript">
        var doc_version = "${current_version}";
        var doc_slug = "${slug}";
        var static_root = "${pathto('_static', 1)}"

        // copied from:
        // https://github.com/rtfd/readthedocs.org/commit/edbbb4c753454cf20c128d4eb2fef60d740debaa#diff-2f70e8d9361202bfe3f378d2ff2c510bR8
        var READTHEDOCS_DATA = {
            project: "${slug}",
            version: "${current_version}",
            page: "${pagename}",
            theme: "${html_theme}"
          };

    </script>
    <!-- end RTD <head> via SQLAlchemy adapter -->

    </%block>


    </%text>

    <!-- sqlalchemy.org docs base head -->
    <%include file="/head.mako" args="site_base=self.attr.site_base, docs_base=self.attr.docs_base, css=False"/>
    <%include file="/tracking.mako"/>
    <!-- end sqlalchemy.org docs base head -->

</head>

<body>

<div id="wrap">

<%include file="header.mako" args="section='docs', site_base=self.attr.site_base, docs_base=self.attr.docs_base" />

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
     <!-- End original user content -->

    </%block>


</%text>

</div> <!-- end #wrap -->

</body>
</html>

