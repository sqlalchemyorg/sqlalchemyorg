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
    <li><a href="#trac">Trac Access</a></li>
    <li><a href="#bugs">Reporting Bugs</a></li>
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

<p>The overall status of development can be gleaned by viewing the <a href="trac/roadmap">Roadmap</a> in Trac.  We try to
    assign all bugs and new features to a specific version.   A specific number, like "0.6.8", means we'd like
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

<a name="trac"></a>
<h2>Trac Access</h2>
<p>SQLAlchemy uses Trac for bug reporting and issue tracking, Wiki pages, and source browsing.
Trac now uses a registration system, so create an account via the "registration" link 
to log in and participate in tickets.
</p>

<a name="bugs"></a>
<h2>Reporting Bugs</h2>

<p>Bugs are reported using Trac at the <a href="/trac/newticket">new ticket</a> link 
(note you have to be logged in to use it).</p>

<p>Bugs are generally reported only against the two most recent release branches, which comprise
    the <strong>default</strong> branch and the <strong>maintenance</strong> branch.   Branches
    prior to these are rarely modified.   Bug reports regarding library behavior
    as well as documentation issues are reported in nearly equal measure.</p>

<p>When reporting a behavioral bug we ask that you:</p>

    <ul>
        <li>Ensure that the issue is still present on the most recent released version of SQLAlchemy within either
            the default branch or the maintance branch, and preferably
            against the latest development tip of the series in use.   SQLAlchemy provides easy download links of the 
            most recent development versions on the <a href="/download.html">download page.</a></li>
        <li>Check that the issue doesn't already exist in Trac.  This can be a little tricky as Trac's search interface
            isn't the best, but we ask that you give it a try.</li>
        <li>Only report issues that you're pretty sure is a bug.   It is perfectly OK to report a usage issue on the
            mailing list that may or may not be a bug - we'll escalate bugs to the bug tracker if it really
            is a bug.</li>
        <li>Create a succinct test case which reproduces the issue.   This needs to be a script that
            <strong>we can actually run</strong> - so it should not require any imports that the SQLAlchemy
            developers don't have access to, and in the vast majority of cases should not have any imports
            outside of SQLAlchemy itself.   It needs to include whatever table definitions and data are 
            required to reproduce the issue.  While we have access to most database backends, SQLite is preferred
            unless the issue is specific to a certain backend.
        </li>
        <li>Tell us exactly what version of SQLAlchemy the issue is being observed with, as well as details
            about the database in use.   Often, an issue has already been fixed in the upcoming series and
            could not be backported.</li>
        <li>Add yourself as a CC to the issue - our current trac interface gives you only one chance to do this 
            unfortunately, so if you miss it, just add an email address in a comment and we'll add you on.</li>
        <li>Monitor the issue.   Lots of times the developers have immediate followup questions, and might even
            have patches for you to try in case the issue is hard to reproduce.   Please keep the conversation going
            until we can get the bug fixed !</li>
    </ul>
<p>Ready?  Let's <a href="/trac/newticket">report a bug!</a></p>

<a name="assistance"></a>
<h2>User Assistance</h2>
<p>SQLAlchemy always needs people to help answer questions, particularly from new users.</p>

<p>The <a href="http://groups.google.com/group/sqlalchemy">Mailing list</a> is active every day, and can sometimes
receive a dozen new users in one week.   Help with fielding new users and questions on the list is always appreciated !
Regular users can also volunteer to help with approval of new posters.
</p>

<p>The IRC channel <code>#sqlalchemy</code> on Freenode is similarly busy most days. 
There's a core set of "regulars" who are pretty friendly, and more helpers are always welcome.  </p>

<p>SQLAlchemy places great emphasis on polite, thoughtful, and constructive communication between users and developers.
    Rudeness, personal insults, or overly brusque answers are never appropriate, even for users with unreasonable requests. 
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
        <li>The <a href="/organizations.html">"Organizations Using SQLAlchemy"</a> page lists prominent
            and not-so-prominent organizations who make use of SQLAlchemy.   Please contact 
            us to have your organization added here.</li>
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