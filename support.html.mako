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
    <li><a href="#mailinglist">Mailing List</a></li>
    <li><a href="#real-time">Real-time Channel</a></li>
    <li><a href="#stackoverflow">Stack Overflow</a></li>
    <li><a href="#professional">Professional Support with Tidelift</a></li>
</ul>

<a name="before"></a>
<p>Before requesting support, please try to make use of the available online resources, where
the answers to a large number of questions can already be found.
The most important is the <a href="/docs">documentation</a>.   A great majority of questions
asked on the SQLAlchemy mailing list are easily answered through simple searches via the <a href="http://www.sqlalchemy.org/docs/">index page</a>,
the <a href="/docs/search.html">Sphinx documentation search</a>,
or a <a href="http://www.google.com/search?q=site%3Awww.sqlalchemy.org%2Fdocs%2F">Google search</a>.
Note also that the documentation is worked on and improved constantly, sometimes dramatically so.
Issues with the documentation may be reported as bugs (see <a href="/participate.html#bugs">reporting bugs</a>).
</p>

<p>SQLAlchemy is a very powerful tool that can serve your Python database development needs for
years.  An initial investment in careful study of the documentation is well worth it!</p>

<p>Other places to check for information include the <a href="/trac/wiki/FAQ">FAQ</a> (note the FAQ is undergoing an upgrade soon!),
the usage recipes at <a href="/trac/wiki/UsageRecipes">Theatrum Chemicum</a>, and <a
href="http://stackoverflow.com/questions/tagged/sqlalchemy">Stack Overflow</a>.
</p>

<a name="mailinglist"></a>
<h2>Mailing List</h2>

<p>Ready to post on the mailing list ?   This is the primary place for
interactive support. We ask that posters try, to the best of their ability, to
compose messages are both complete in their description as well as succinct
with regards to the topic at hand:</p>

    <ul>

        <li><strong>Complete</strong> - important details like the version of
        SQLAlchemy in use, the type of database being worked with (MySQL 5,
        Postgresql 8.4, etc.), as well as full stack traces for error messages
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

<p>The mailing list is hosted at <a
href="http://groups.google.com/group/sqlalchemy">Google Groups.</a>
This list is moderated for new users, so your first post may not appear for up to 24
hours until a moderator can approve it.  Once approved, subsequent posts should appear
immediately.</p>


<a name="real-time"></a>
<h2>Real-time Channels</h2>

<p>There are several real-time options for support.</p>

<p><em>The Developers of SqlAlchemy kindly request all people participating in 
these channels respect the <a href="/codeofconduct.html">Code of Conduct</a> when 
seeking or providing support.</em></p>

<p>Core developers are sometimes present on these channels, but please do not
single them out for individual assistance!  There are usually about 80-100
members on at any given time - many of which can likely help with your issue.
If your issue is genuinely more intricate and requiring of more skillful help
than is currently available on IRC or Gitter, that's when it's time to post
on the <a href="#mailinglist">mailing list</a>.</p>

<a name="irc"></a><!-- keep #irc for legacy links -->
<h3>IRC Channel</h3>
<p>A popular support resource is the IRC channel.   In this forum, users of all
skill levels can ask short questions, post pastes of code, and discuss
techniques among other developers who happen to be present.   The usual rules
of IRC etiquette apply here - not unlike the mailing list, users who've put
some effort into understanding their problem ahead of time will tend to get
better results.</p>

<p>The IRC channel is on the <a href="http://www.freenode.net">Freenode</a> network as <code>#sqlalchemy</code>.</p>

<a name="gitter"></a>
<h3>Gitter Room</h3>

<p>The <a href="https://gitter.im/sqlalchemy/community">sqlalchemy/community</a> 
Gitter room is available for real-time support.  There are usually a handful of 
SqlAlchemy users and developers present and willing to assist.</p>

<p>Unlike IRC, Gitter offers a browsable public history - so user are not required
to be constantly logged-in and can review any conversations they have missed.</p>

<a name="stackoverflow"></a>
<h2>Stack Overflow</h2>

<p><a href="http://www.stackoverflow.com">Stack Overflow</a> is a great resource for developer help
across the full spectrum of software development issues.   Search for questions tagged with
<a
href="http://stackoverflow.com/questions/tagged/sqlalchemy">sqlalchemy</a>.

<a name="professional"></a>
<h2>Professional support with Tidelift</h2>

<div id="tidelift-support">

<a href="https://tidelift.com/subscription/pkg/pypi-sqlalchemy?utm_source=pypi-sqlalchemy&utm_medium=referral&utm_campaign=website"><img src="/img/tidelift.png"/></a>

<p>Professional support for SQLAlchemy is available as part of the <a
href="https://tidelift.com/subscription/pkg/pypi-sqlalchemy?utm_source=pypi-sqlalchemy&utm_medium=referral&utm_campaign=website">Tidelift
Subscription</a>. Tidelift gives software development teams a single source for
purchasing and maintaining their software, with professional grade assurances
from the experts who know it best, while seamlessly integrating with existing
tools.</p>

</div>

<div class="pagecontrol">
<strong>Next ... <a href="/participate.html">Participate</a></strong>
</div>