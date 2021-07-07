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
    <li><a href="#discussions">Github Discussions</a></li>
    <li><a href="#mailinglist">Mailing List</a></li>
    <li><a href="#real-time">Real-time Channel</a></li>
    <li><a href="#professional">Professional Support with Tidelift</a></li>
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
href="https://github.com/sqlalchemy/sqlalchemy/discussions">Github
Discussions</a> forum which is fast becoming a primary informational resource.
</p>

<a name="discussions"></a>
<h2>Github Discussions</h2>

<p>SQLAlchemy and its related projects now offer support via the <a
href="https://github.com/sqlalchemy/sqlalchemy/discussions">Github
Discussions</a> link on the Github page for each project. This forum-style
interface allows for discussions more or like that of the mailing list, which
also remains available, however due to the popularity of Github, the
discussions forum has become one of several primary avenues for interactive
support.

When posting on the discussions forum as well as the mailing list,
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


<a name="mailinglist"></a>
<h2>Mailing List</h2>

<p>Old school users are free to use the mailing list as well.   Guidelines
for posting are the same as those mentioned for Discussions above, so that
we can quickly identify the problem and the best way to solve.

<p>The mailing list is hosted at <a
href="http://groups.google.com/group/sqlalchemy">Google Groups.</a> Google will
sometimes moderate posts created by new users, so in some cases your first post
may not appear for up to 24 hours until a moderator can approve it. Once
approved, subsequent posts should appear immediately.</p>


<a name="real-time"></a>
<h2>Real-time Channels: Gitter, IRC</h2>

<p>There are several real-time options for support.</p>

<p><em>The Developers of SqlAlchemy kindly request all people participating in
these channels respect the <a href="/codeofconduct.html">Code of Conduct</a> when
seeking or providing support.</em></p>

<p>Core developers are sometimes present on these channels, but please do not
single them out for individual assistance!  There are usually about 80-100
members on at any given time - many of which can likely help with your issue.
If your issue is genuinely more intricate and requiring of more skillful help
than is currently available on IRC or Gitter, that's when it's time to post
on the <a href="#discussions">Github Discussions forum</a> or
<a href="#mailinglist">mailing list</a>.</p>

<a name="gitter"></a>
<h3>Gitter Room</h3>

<p>The <a href="https://gitter.im/sqlalchemy/community">sqlalchemy/community</a>
Gitter room is available for real-time support.  There are usually a handful of
SqlAlchemy users and developers present and willing to assist.</p>

<p>Unlike IRC, Gitter offers a browsable public history - so user are not required
to be constantly logged-in and can review any conversations they have missed.</p>


<a name="irc"></a><!-- keep #irc for legacy links -->
<h3>IRC Channel</h3>
<p>A popular support resource is the IRC channel.   In this forum, users of all
skill levels can ask short questions, post pastes of code, and discuss
techniques among other developers who happen to be present.   The usual rules
of IRC etiquette apply here - not unlike the mailing list, users who've put
some effort into understanding their problem ahead of time will tend to get
better results.</p>

<p>The IRC channel is on the <a href="https://libera.chat/">Libera</a> network as <code>#sqlalchemy</code>.</p>

<a name="professional"></a>
<h2>Professional support with Tidelift</h2>

<div class="tidelift-support">

<a href="https://tidelift.com/subscription/pkg/pypi-sqlalchemy?utm_source=pypi-sqlalchemy&utm_medium=referral&utm_campaign=website"><img src="/img/tidelift.png"/></a>

<p>Professional support for SQLAlchemy is available as part of the <a
href="https://tidelift.com/subscription/pkg/pypi-sqlalchemy?utm_source=pypi-sqlalchemy&utm_medium=referral&utm_campaign=website">Tidelift
Subscription</a>. Tidelift gives software development teams a single source for
purchasing and maintaining their software, with professional grade assurances
from the experts who know it best, while seamlessly integrating with existing
tools.</p>

</div>

<div class="d-flex">
    <span class="flex-grow-1"></span>
    <strong>Next ... <a href="/participate.html">Participate</a></strong>
</div>