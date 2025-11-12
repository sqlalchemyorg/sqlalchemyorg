<%inherit file="/involved_base.mako"/>
<%!
section='involved'
%>
<%block name="head_title">
Support - SQLAlchemy
</%block>

<h1>Get Support</h1>

<ul>
    <li><a href="#before">Before Requesting Support</a></li>
    <li><a href="#discussions">GitHub Discussions</a></li>
    <li><a href="#real-time">Real-time Channels</a></li>
</ul>

<a name="before"></a> <p>Before requesting support, please try to make use of
the available online resources, where the answers to a large number of
questions can already be found. The most important is the <a
href="https://docs.sqlalchemy.org/">documentation</a>. A great deal of
questions asked in SQLAlchemy forums are answered through simple searches using
the search box in the upper right of the index page or in the left hand column
of any documentation page. The documentation is worked on and improved
constantly, sometimes dramatically so. Issues with the documentation may be
reported as bugs (see <a href="/participate.html#bugs">reporting bugs</a>).
Another approach is to search through the
<a
href="https://github.com/sqlalchemy/sqlalchemy/discussions">GitHub
Discussions</a> forum which is fast becoming a primary informational resource.
</p>

<a name="discussions"></a>
<h2>GitHub Discussions</h2>

<p>SQLAlchemy and its related projects now offer support via the <a
href="https://github.com/sqlalchemy/sqlalchemy/discussions">GitHub
Discussions</a> link on the GitHub page for each project. This forum-style
interface allows for discussions more or like that of a mailing list, but
with better support for illustrating code samples and linking to issues.

When posting on the discussions forum,
we ask that posters try, to the best of their ability, to
compose messages are both complete in their description as well as succinct
with regards to the topic at hand:</p>

    <ul>

        <li><strong>Complete</strong> - important details like the version of
        SQLAlchemy in use, the type of database being worked with (MySQL 8,
        PostgreSQL 12, etc.), as well as full stack traces for error messages
        are provided, as well as clear sections of code illustrating the exact
        usage that leads to the symptom.</li>

        <li><strong>Succinct</strong> - code and output is trimmed and
        formatted to illustrate only the problem at hand - details that aren't
        directly relevant to the issue at hand should be trimmed out as much as
        possible, including unrelated tables and models, dependencies on
        internal or third party libraries, unrelated object methods and
        relationships, large numbers of column definitions that can be omitted,
        complicated internal variable names that are difficult for outsiders to
        read. </li>

    </ul>

<p>These are only guidelines to follow, as we can and regularly do accommodate
users of all skill levels. As long as some effort is apparent on your part to
research and thoughtfully describe the issue, you've earned support from us
!</p>



<a name="real-time"></a>
<h2>Real-time Channels: Gitter</h2>

<p>The <a href="https://gitter.im/sqlalchemy/community">sqlalchemy/community</a>
Gitter room is available for real-time support.  There are usually a handful of
SQLAlchemy users and developers present and willing to assist.</p>


<div class="d-flex">
    <span class="flex-grow-1"></span>
    <strong>Next ... <a href="/participate.html">Participate</a></strong>
</div>
