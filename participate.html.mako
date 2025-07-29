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
</ul>
<a name="status"></a>
<h2>Project Status</h2>
<p>A key to participation is being tuned in to the project's current status.   The current released version
    of SQLAlchemy is always at the top of the homepage on the right hand side.  Usually there are two
    <strong>branches</strong> released at a time, such as "1.3" and "1.4".   The higher number, i.e. "1.4",
    is the "default" branch, and "1.3" is the "maintenance" branch.  The movement to a new pair of
    major branches spans around 12-18 months.  Our
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

<a name="github"></a>
<h2>GitHub</h2>
<p>SQLAlchemy uses <a href="https://github.com">GitHub</a> for bug reporting
and issue tracking, Discussions, Wiki pages, and public source code access.
</p>

<a name="bugs"></a>
<h2>Reporting Bugs</h2>

<p>Bugs are reported using GitHub.</p>

<p>We greatly prefer that usage problems are reported as
<a href="https://github.com/sqlalchemy/sqlalchemy/discussions">GitHub Discussions</a>
first, and not as issues.
As issues are identified from the description of the problem, SQLAlchemy developers
will open issues to be fixed as needed.
</p>

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

<p>For links to current IRC / chat areas, see <a href="/support.html#real-time">Real-time channels</a>.</p>


<p>SQLAlchemy places great emphasis on polite, thoughtful, and constructive communication between users and developers.
    Rudeness, personal insults, or brusque answers are never appropriate, even for users with unreasonable requests.   See our <a href="codeofconduct.html">Code of Conduct</a> for a full statement.
    We also try to ensure that
    no message on GitHub Discussions goes unanswered, even if the answer is simply to politely direct the user towards
    the appropriate section of documentation.   The core SQLAlchemy developers would like to encourage all users to help
    with this task - if you see a very basic question sitting on the list for a few days, that's us hoping you'll respond
    to it !  You have our permission :).</p>


<div class="d-flex">
    <span class="flex-grow-1"></span>
    <strong>Next ... <a href="/develop.html">Develop</a></strong>
</div>
