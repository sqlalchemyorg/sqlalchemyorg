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

    <!-- head pulled in from sphinx build -->
    <%text>
    <%block name="headers"/>
    </%text>
    <!-- end head pulled in from sphinx build -->

    <!-- sqlalchemy.org docs base head -->
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="shortcut icon" href="${site_base}/favicon.ico" type="image/x-icon">
    <script type="text/javascript" src="${site_base}/js/doc_versions.js"></script>

    <script type="text/javascript">
    var site_base='${site_base}';
    var docs_base='${docs_base}';
    </script>
    <style>
        body {
          margin: 0;
          padding: 0;

          font-family: Verdana, "Lucida Grande", sans-serif;
          /*font-size: small;
          line-height: 1.3em;
          */

          text-align: left; 
          color: #333;
          background: #fff;
        }

        /* links
        ---------------------------------------------------------- */

        a:link {
          padding: 0 0 1px 0;
          font-weight: normal;
          text-decoration: none;
          color: #900;
        }
        a:visited {
          color: #700;
          font-weight: normal;
          text-decoration: none;
        } 
        a:hover {
          color: #f00;
          font-weight: normal;
          text-decoration: underline;
        }

        /* page structure
        ---------------------------------------------------------- */

        #wrap {
          position: relative;
          max-width: 1024px;
          min-width: 480px;
          margin: 0 auto;
          text-align: left;
          background: #fff;
        }

        #content,
        #sidebar,
        #footer {
          /* no clue how to replicate 'small' using 
            numeric */
          font-size: small;
          line-height: 1.4em;
        }

        #sidebar {
          float: right;
          width: 25%;
          font-size: .75em;
          line-height: 1.4em;
          color: #777;
        }

        #main-body {
          padding: 20px 20px 0 20px;
        }
        #footer {
          clear: both;
          margin: 50px 0 20px 0;
          border-top: 1px solid #d9d9d9;
          padding: 2em 1em;
          background: #fff url(${site_base}/img/nav-shadow2.gif) top left repeat-x;
        }


        /* header
        ---------------------------------------------------------- */

        #header {
          height: 65px;
          background: #fff url(${site_base}/img/symbols-bg5.gif) top right no-repeat;
        }

        #logo {
          padding: 0;
          width: 172px;
        }
        #logo img {
          margin: 7px 0 0 16px;
        }
        #description {
          position: absolute;
          width: 180px;
          top: 45px; right: 0px;
          margin: 0 20px 0 0;
        }

        /* navigation
        ---------------------------------------------------------- */

        #nav {
          padding: 1px 15px 0px 15px;
          background: #787 url(${site_base}/img/navbg1.gif) repeat-x top left;
          height:26px;
          font-size:small;
        }

        #nav ul {
          margin: 0;
          padding: 0;
          list-style: none;
        }

        #nav li {
          float: left;
          margin: 0;
          padding: 0;
          min-height:26px;
        }

        #nav li a {
          float: left;
          margin: 0;
          padding: 5px 12px;
          font-family: arial, verdana, sans-serif;
          font-size: 100%;
          font-weight: normal;
          text-decoration: none;
          color: #f0f0f0;
        }

        #nav li:hover, #nav li.active {
          color: #fff;
          background-color: #333;
        }

        #nav ul li ul {
          display:none;
          position:absolute;
          top:92px;
          min-width:140px;
        }

        #nav ul li ul li {
          height:26px;
          width:100%;
          background-color: #787;
          clear:left;
          float:left;
        }

        #nav ul li ul li a {
          width:100%; 
        }

        #nav ul li:hover ul {
          display:block;
        }

        #nav ul li ul li:hover {
          color: #fff;
          background-color: #333;
        }


        /* basic phrase element styles */

        code, .darkcell span.pre {
          color: #703040;
          font: normal 1.1em/1.2em courier, "courier new", Monaco, monospace;
          text-align: left;
        }

        em {
          font-style: italic;
          }
        strong {
          font-weight: bold;
          }


        .prev {
            float: left;
            font-size: 0.8em;
        }
        .next, .chronlink {
            float: right;
            font-size: 0.8em;
        }


        /* code highlight
        ---------------------------------------------------- */

        pre {
            margin: auto;
            padding: 10px;
        }

        div.pygments_manni {
            background-color: #EFEFEF;
            border: 1px solid;
            overflow: auto;
            margin-bottom:10px;
        }


        /* footer styles
        ---------------------------------------------------------- */

        #footer {
          color: #777;
        }
        #footer p {
          margin: 0;
          padding: 0;
          }
        #footer .pypowered { float: left; margin: 0 10px 0 0;}
        #footer .copyright { 
            float: left;
            font-size:.9em;
        }
        #footer .sflogo { float: right; }

        /* misc.
        ---------------------------------------------------------- */

        hr, .hide {
          display: none;
          }
        a img {
          border: none;
          }

        .doc_toolbar {
          float:right;
        }

        /* self-clearing floats */

        #logo:after, 
        #nav:after, 
        #title:after, 
        #main-body:after {
          content: "."; 
          display: block; 
          height: 0; 
          clear: both; 
          visibility: hidden;
        }

        /* 
        Title:     Fixes for IE/win
        Author:    dan@simplebits.com
        Updated:   March 16 2006
        */

        /* self-clearing floats */

        * html #logo, 
        * html #nav, 
        * html #title, 
        * html #main-body {
          height: 1%;
          }

        /* fixes weird IE body padding issue */

        * html #wrap { height: 1%; }
    </style>
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
</%block>
</%text>

</div> <!-- end #wrap -->

</body>
</html>








