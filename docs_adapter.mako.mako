<%!
    in_docs = True
%><%
self.attr.site_base = site_base = bf.config.site.url
self.attr.docs_base = docs_base = bf.config.docs_url
self.attr.bb_base = bb_base = bf.config.bb_url

%><!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>
        <%text>
        <%block name="head_title">
        SQLAlchemy - The Database Toolkit for Python
        </%block>
        </%text>
    </title>

    <%text>

    <%!
        import urlparse
    %>

    <link href='//fonts.googleapis.com/css?family=Lato:400,700|Roboto+Slab:400,700' rel='stylesheet' type='text/css'/>

    <%block name="css">
        <!-- begin iterate through SQLA css_files -->
        % for cssfile in self.attr.default_css_files:
            <link rel="stylesheet" href="${pathto(cssfile, 1)}" type="text/css" />
        % endfor
        <!-- end iterate through SQLA css_files -->

        <!-- begin iterate through sphinx environment local css_files -->
        % for cssfile in css_files:
            % if not cssfile.startswith("http"):
            <link rel="stylesheet" href="${pathto(cssfile, 1)}" type="text/css" />
            % endif
        % endfor
        <!-- end iterate through sphinx environment local css_files -->

        <link rel="stylesheet" type="text/css" media="all" href="${site_base}/css/site.css"/>
        <link rel="stylesheet" type="text/css" media="print" href="${site_base}/css/print.css"/>

        <!-- begin iterate through sphinx environment remote css_files -->
        % for cssfile in css_files:
            % if cssfile.startswith("http"):
            <link rel="stylesheet" href="${pathto(cssfile, 1)}" type="text/css" />
            % endif
        % endfor
        <!-- end iterate through sphinx environment remote css_files -->
    </%block>

    <%block name="headers">


    <%
        ending = "/" if builder == "readthedocsdirhtml" else ".html"
        canonical_page = pagename + ending
    %>
    % if canonical_url:
        <%
            # make sure we're just on the base
            canonical_url_ = "%s://%s/" % (urlparse.urlparse(canonical_url)[0:2])

        %>
        % if single_version:
          <!--
          Single version, so link without a language or version
          http://docs.readthedocs.org/en/latest/canonical.html
          -->
          <link rel="canonical" href="${canonical_url_}${canonical_page.replace("index.html", "").replace("index/", "")}" />
        % else:
          <!--
          Always link to the latest version, as canonical.
          http://docs.readthedocs.org/en/latest/canonical.html
          -->
          <link rel="canonical" href="${canonical_url_}${rtd_language}/latest/${canonical_page.replace("index.html", "").replace("index/", "")}" />
        % endif
    % else:
        <link rel="canonical" href="http://docs.sqlalchemy.org/${rtd_language}/latest/${canonical_page.replace("index.html", "").replace("index/", "")}" />
    % endif

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
    <%include file="/head.mako" args="site_base=self.attr.site_base, docs_base=self.attr.docs_base, bb_base=self.attr.bb_base, css=False"/>
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
     <!-- End original user content -->

    </%block>


</%text>

</div> <!-- end #wrap -->

<%text>
    <%block name="lower_scripts"/>
</%text>

<script type="text/javascript" src="${site_base}/js/doc_versions.js"></script>
<%include file="/tracking.mako"/>

</body>
</html>

