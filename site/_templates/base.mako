<%!
    in_docs = False
%>
<%
in_docs = self.attr.in_docs

current_section = getattr(self.module, 'section', '')
if not current_section and in_docs:
    current_section = 'docs'
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">

    <title>
        <%block name="head_title">
        SQLAlchemy - The Database Toolkit for Python
        </%block>
    </title>

    <%block name="head">
    <link rel="stylesheet" type="text/css" media="all" href="/css/site2.css"></link>
    <link rel="stylesheet" type="text/css" media="print" href="/css/print.css"></link>
    </%block>

</head>

<body>

<div id="wrap">

<%include file="header.mako" args="section=current_section" />

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

<%include file="footer.mako"/>

</div> <!-- end #wrap -->

<%block name="scripts"/>

</body>
</html>








