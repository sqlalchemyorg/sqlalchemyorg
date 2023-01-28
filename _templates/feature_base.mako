<%inherit file="/base.mako"/>
<%namespace name="tools" file="/tools.mako"/>
<%!
section='features'
%>
<%block name="head_title">
Features and Philosophy - SQLAlchemy
</%block>

<h1>Features and Philosophy</h1>

<p>An overview of what SQLAlchemy is about.</p>

<%tools:vertical_nav>
<%tools:vertical_nav_item url="/philosophy.html" url_text="Philosophy Statement" content="- SQLAlchemy's Philosophy"/>
<%tools:vertical_nav_item url="/features.html" url_text="Features" content="- overview of major features"/>
<%tools:vertical_nav_item url="/quotes.html" url_text="Quotes" content="- user quotes"/>
</%tools:vertical_nav>


${next.body()}