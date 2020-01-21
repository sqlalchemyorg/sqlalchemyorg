<%inherit file="/base.mako"/>
<%!
section='involved'
%>
<%block name="head_title">
Get Involved - SQLAlchemy
</%block>

<h1>Community Guide</h1>

<p>A guide to getting involved with SQLAlchemy and its associated projects.</p>
<ul class="nav">
    <li><a href="/support.html">Get Support</a> - help with using SQLAlchemy</li>
    <li><a href="/participate.html">Participate</a> - reporting bugs and helping others</li>
    <li><a href="/develop.html">Develop</a> - contributing code</li>
    <li><a href="/further.html">Further Reading</a> - great links on how to ask for help</li>
    <li><a href="/codeofconduct.html">Code of Conduct</a> - guidelines for interaction</li>
</ul>

<p>While these sections may be written to address developers of the core SQLAlchemy project,
   the various guidelines, especially the Code of Conduct, apply to all projects hosted
   under the SQLAlchemy organization's repository.
   </p>

${next.body()}