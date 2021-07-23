<%!
    in_docs = False
%><%
in_docs = self.attr.in_docs
if in_docs:
    self.attr.site_base = site_base = zf.config.site_url
else:
    self.attr.site_base = site_base = ""
self.attr.docs_base = docs_base = zf.config.docs_url
self.attr.bb_base = bb_base = zf.config.bb_url
current_section = getattr(self.attr, 'section', '')
if not current_section and in_docs:
    current_section = 'docs'
self.attr.current_section = current_section
%><!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
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

<div id="wrap" class="container-xxl wrap px-0">

    <%include file="header.mako" args="section=current_section, docs_base=docs_base, site_base=site_base, bb_base=self.attr.bb_base" />

    <div id="main-body" class="${current_section} main-body row m-0">

    % if not in_docs:

        <main id="content" class="content col-md-8 col-lg-9 p-4">
            <div id="content-inner">
                ${next.body(**pageargs)}
            </div>
        </main> <!-- end #content-inner, #content -->

        <div class="col-md-4 col-lg-3 pt-4 px-2">
            <%block name="sidebar">
                <%include file="sidebar.mako" args="section=self.attr.current_section" />
            </%block>
        </div>

    % else:

        <div id="docs">
        ${next.body(**pageargs)}
        </div>

    % endif

    </div> <!-- end #main-body -->

    <%include file="footer.mako" args="site_base=self.attr.site_base, docs_base=self.attr.docs_base"/>

</div> <!-- end #wrap -->

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script type="text/javascript" src="${site_base}/js/doc_versions.js"></script>
<%include file="/tracking.mako"/>

<%block name="scripts"/>



</body>
</html>








