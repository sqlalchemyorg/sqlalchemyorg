<%inherit file="/involved_base.mako"/>
<%!
section='involved'
%>
<%block name="head_title">
Participate - SQLAlchemy
</%block>

<h1>Participate</h1>

<ul>
    <li><a href="#status">Project Status</a></li>
    <li><a href="#github">GitHub Access</a></li>
    <li><a href="#bugs">Reporting Bugs</a></li>
    <li><a href="#security">Reporting Security Issues</a></li>
    <li><a href="#assistance">User Assistance</a></li>
    <li><a href="#publicizing">Publicizing SQLAlchemy</a></li>
</ul>
<a name="status"></a>
<h2>Project Status</h2>
<p>A key to participation is being tuned in to the project's current status.   The current released version
    of SQLAlchemy is always at the top of the homepage on the right hand side.  Usually there are two
    <strong>branches</strong> released at a time, such as "0.6" and "0.7".   The higher number, i.e. "0.7",
    is the "default" branch, and "0.6" is the "maintenance" branch.  The movement to a new pair of
    major branches spans around 12-18 months.  Releases within each branch are between one and two months
    apart.  At some point there will be a 1.0 release.  But our
    approach of moving slowly and steadily has so far been very beneficial to the project, allowing
    great strides in architecture and usage before a larger pool of new users is taken on.</p>

<p>The overall status of development can be gleaned by viewing the <a href="${self.attr.bb_base}">GitHub project page.</a>.  We try to
    assign all bugs and new features to a specific version, which are linked to milestones.   A specific number, like "0.6.8", means we'd like
    to get the ticket completed as of that version (though this is not always guaranteed).
    An "open ended" number like "0.7.xx" means the ticket is
    "in the queue", but is not determined to be part of any specific version.   A lot of these tickets are
    of lower priority, some very involved and tedious as well, and are pushed along major releases,
    in some cases several times.  You can
    <a href="/develop.html">help out</a> with some of them!
</p>
<p>Major new developmental initiatives are also discussed on the <a href="http://groups.google.com/group/sqlalchemy-devel">development list</a>.
    This list has historically been a little dead but we hope to revive it.   New releases are always announced
    on the <a href="http://groups.google.com/group/sqlalchemy">main mailing list</a>, and more recently on the
    <a href="/blog">SQLAlchemy Blog</a>, recently upgraded to allow a higher volume of posts.   Occasional
    more in-depth posts can also be found at <a href="http://techspot.zzzeek.org/category/sqlalchemy/">techspot.zzzeek.org</a>.
</p>

<a name="github"></a>
<h2>GitHub</h2>
<p>SQLAlchemy uses <a href="https://github.com">Github</a> for bug reporting and issue tracking, Wiki pages, and source browsing.   Sign up for a GitHub account in order to participate in issues.
</p>

<a name="bugs"></a>
<h2>Reporting Bugs</h2>

<p>Bugs are reported using GitHub using the <a href="${self.attr.bb_base}/issues">Issues</a> tracking system.</p>

<p>It is common these days for issues reported on Github that are not really bugs
but are instead usage questions.   In the past we've tried to discourage the use of
this style of reporting, however as it's prevalent on Github and Github has a
very open-ended tagging system, we will tag such
issues as "question" and answer them normally, however note we still welcome
user questions on the <a href="support.html#mailinglist">mailing list</a> as
has been the case for many years.</p>

<p>When reporting a behavioral (non-documentation) bug we ask that you:</p>

    <ul>
        <li><p><strong>Create a succinct test case which reproduces the issue.</strong>   This needs to be a script that
        <strong>we can actually run</strong> - so it should not require any
        imports that the SQLAlchemy developers don't have access to, and in
        the vast majority of cases should not have any imports outside of
        SQLAlchemy itself.   It needs to include whatever table definitions
        and data are required to reproduce the issue.  While we have access
        to most database backends, SQLite is preferred unless the issue is
        specific to a certain backend.</p>

        <p>The guide we use for this is <a
        href="https://stackoverflow.com/help/mcve">How to create a Minimal,
        Complete, and Verifiable example</a> on StackOverflow.   Please
        give it a read.</p>

        </li>

        <li>At the very least, if code examples are not feasible,
        <strong>please include complete stack traces for all exceptions being
        observed.</strong>  Nothing is more vague than an exception message
        without a stack trace. </li>

        <li>Tell us exactly what version of SQLAlchemy the issue is being
        observed with, as well as details about the database in use as well as
        the exact driver (e.g. Python DBAPI) being used. </li>

        <li>Please respond to further questions asked on the issue.  If we
        can't get the additional information we need, we will usually have to
        close the issue. </li>

    </ul>

<a name="security"></a>
<h2>Reporting Security Issues</h2>


<p>SQLAlchemy participates in the <a href="https://tidelift.com/security">Tidelift</a>
security infrastructure for reporting potential vulnerabilities reponsibly.
Please follow the guidelines at <a href="https://tidelift.com/security">Tidelift security</a>
in order to report a security issue.   Security-related issues in SQLAlchemy
are <i>extremely</i> rare, and there have only been three CVEs reported in a fourteen year
period.  Nevertheless, we would ask that you <strong>please do not file CVEs without
emailing us first</strong>, so that proper disclosure steps may be taken.

<a name="assistance"></a>
<h2>User Assistance</h2>
<p>SQLAlchemy always needs people to help answer questions, particularly from new users.</p>

<p>The <a href="http://groups.google.com/group/sqlalchemy">Mailing list</a> is active every day, and can sometimes
receive a dozen new users in one week.   Help with fielding new users and questions on the list is always appreciated !
Regular users can also volunteer to help with approval of new posters.
</p>

<p>The IRC channel <code>#sqlalchemy</code> on <a href="/support.html#irc">Libera</a> is similarly busy most days.
There's a core set of "regulars" who are pretty friendly, and more helpers are always welcome.  </p>

<p>SQLAlchemy places great emphasis on polite, thoughtful, and constructive communication between users and developers.
    Rudeness, personal insults, or brusque answers are never appropriate, even for users with unreasonable requests.   See our <a href="codeofconduct.html">Code of Conduct</a> for a full statement.
    We also try to ensure that
    no message on the mailing list goes unanswered, even if the answer is simply to politely direct the user towards
    the appropriate section of documentation.   The core SQLAlchemy developers would like to encourage all users to help
    with this task - if you see a very basic question sitting on the list for a few days, that's us hoping you'll respond
    to it !  You have our permission :).</p>

<a name="publicizing"></a>
<h2>Publicizing SQLAlchemy</h2>

<p>We love for people to spread the word about SQLAlchemy.    Some common venues:</p>

    <ul>
        <li>Twitter - we get a lot of comments good and bad via <a href="http://www.twitter.com">Twitter</a>
            - if the tweet contains "sqlalchemy" or a link to the site, it will show up under searches for the term.
            Expect SQLAlchemy developers to respond to provocative tweets!
        </li>
        <li>Blog Posts - Users often write short tutorials or blog posts describing how to achieve something
            with SQLAlchemy.    It all becomes part of the larger collection of knowledge so share freely!
        </li>
        <li>User group presentations - lots of users present SQLAlchemy, or an application that SQLAlchemy was
            instrumental towards, to their local Python group or other software development group.  Put your slides
            up on the web after the presentation!</li>
    </ul>

<div class="pagecontrol">
<strong>Next ... <a href="/develop.html">Develop</a></strong>
</div>