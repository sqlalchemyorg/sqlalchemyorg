<%inherit file="/base.mako"/>
<%!
section='development'
%>
<%block name="head_title">
Development - SQLAlchemy
</%block>

<h1>Development</h1>

<h2>REPORTING BUGS</h2>

Fully descriptive bug reports and feature requests may be posted via the "new
ticket" link on the <a href="/trac">wiki</a>, after logging in as
"guest"/"guest". Please review the <a href="/trac/query">current list</a> of
reports before posting.

<h2>DEVELOPMENT DISCUSSION</h2>

<p>Most development discussion occurs on the main mailing list or IRC channel
- further info is available on the <a href="community.html">community</a>
page.</p>

<h2>Tracking Activity</h2>

<p>Mercurial Commits can be viewed via the <a
href="/trac/timeline">timeline</a> (<a
href="/trac/timeline?milestone=on&amp;ticket=on&amp;ticket_details=on&amp;changeset=on&amp;wiki=on&amp;max=50&amp;daysback=90&amp;format=rss">rss
feed</a>) which also mails to the <a
href="http://lists.sourceforge.net/lists/listinfo/sqlalchemy-commits">Commit
List</a>. Ticket changes are posted to the <a
href="http://lists.sourceforge.net/lists/listinfo/sqlalchemy-tickets">Ticket
List</a>.</p>

<p>SQLAlchemy has a Jenkins server  at <a
href="http://jenkins.sqlalchemy.org/">http://jenkins.sqlalchemy.org/</a>.

<h2>Current Trunk - 0.7</h2>

<p>The current development version of SQLAlchemy is 0.7.</p>

<p>SQLAlchemy's development repository is available using <a
href="http://hg.sqlalchemy.org/">Mercurial</a>. The current repository can be
cloned via:</p>
<p>
<code>
hg clone http://hg.sqlalchemy.org/sqlalchemy
</code>
</p>
<p>
Instant snapshots of the current default branch are available on the <a href="/download.html">download</a> page.
</p>

<h2>Previous Maintenance Branch</h2>

<p>
Version 0.6:
</p>
<p>
  <code>
  hg clone -u rel_0_6 http://hg.sqlalchemy.org/sqlalchemy sa06<br/>
  </code>
</p>

<p>
Version 0.5:
</p>
<p>
  <code>
  hg clone -u rel_0_5 http://hg.sqlalchemy.org/sqlalchemy sa05<br/>
  </code>
</p>

<p>Note that maintenance branches must maintain 100% backwards compatibility with previous releases in that series.  No new feature requests are accepted for maintenance branches.</p>

