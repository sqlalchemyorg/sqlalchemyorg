<%inherit file="/base.mako"/>
<%namespace name="tools" file="/tools.mako"/>
<%!
section='involved'
%>
<%block name="head_title">
Get Involved - SQLAlchemy
</%block>

<h1>Community Guide</h1>

<p>A guide to getting involved with SQLAlchemy and its associated projects.</p>

<%tools:vertical_nav>
<%tools:vertical_nav_item url="/support.html" url_text="Get Support" content="- help with using SQLAlchemy"/>
<%tools:vertical_nav_item url="/participate.html" url_text="Participate" content="- reporting bugs and helping others"/>
<%tools:vertical_nav_item url="/develop.html" url_text="Develop" content="- contributing code"/>
<%tools:vertical_nav_item url="/further.html" url_text="Further Reading" content="- great links on how to ask for help"/>
<%tools:vertical_nav_item url="/codeofconduct.html" url_text="Code of Conduct" content="- guidelines for interaction"/>
</%tools:vertical_nav>

<p class="mt-3">
   While these sections may be written to address developers of the core SQLAlchemy project,
   the various guidelines, especially the Code of Conduct, apply to all projects hosted
   under the SQLAlchemy organization's repository.
</p>

${next.body()}