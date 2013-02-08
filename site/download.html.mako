<%inherit file="/base.mako"/>
<%!
    section = 'download'

    rel_08 = "0.8.0b2"
    rel_07 = "0.7.10"

%>
<%block name="head_title">
Download - SQLAlchemy
</%block>

<h1>Get SQLAlchemy</h1>

<h2>Version 0.8 (beta releases)</h2>

<p>Latest 0.8 Release: <b>${rel_08}</b>

##<a
##href="http://prdownloads.sourceforge.net/sqlalchemy/SQLAlchemy-${rel_08}.tar.gz?download"><b>(${rel_08}
##via Sourceforge)</b></a>

<a href="http://www.python.org/pypi/SQLAlchemy/${rel_08}"><b>(${rel_08} via Cheeseshop)</b></a>

<a href="/changelog/CHANGES_${rel_08.replace('.', '_')}"><b>(CHANGES)</b></a></p>

<p>Please be sure to review the 0.7 to 0.8 migration guide, found at <a
href="/docs/08/changelog/migration_08.html"><b>08Migration</b></a>, for full details on changes
made since 0.6.</p>

<h2>Version 0.7 (production / stable)</h2>

<p>Latest 0.7 Release: <b>${rel_07}</b>

##<a
##href="http://prdownloads.sourceforge.net/sqlalchemy/SQLAlchemy-${rel_07}.tar.gz?download"><b>(${rel_07}
##via Sourceforge)</b></a>

<a href="http://www.python.org/pypi/SQLAlchemy/${rel_07}"><b>(${rel_07} via
Cheeseshop)</b></a>
<a href="/changelog/CHANGES_${rel_07.replace('.', '_')}"><b>(CHANGES)</b></a></p>

<p>SQLAlchemy ${rel_07} is signed using Michael Bayer's PGP key id <a href="http://pgp.mit.edu:11371/pks/lookup?search=0xC4DAFEE1&op=index">C4DAFEE1</a> (use <code>gpg --recv-keys C4DAFEE1</code> to import).</p>

<p>Please be sure to review the 0.6 to 0.7 migration guide, found at <a
href="/docs/07/changelog/migration_07.html"><b>07Migration</b></a>, for full details on changes
made since 0.6.</p>

<h2>Development Versions</h2>

<p>Snapshots from Mercurial:</p>
<p>0.8:
<a href="http://hg.sqlalchemy.org/sqlalchemy/archive/default.zip">zip</a> |
<a href="http://hg.sqlalchemy.org/sqlalchemy/archive/default.tar.gz">gz</a> |
<a href="http://hg.sqlalchemy.org/sqlalchemy/archive/default.tar.bz2">bz2</a>
</p>

<p>0.7:
<a href="http://hg.sqlalchemy.org/sqlalchemy/archive/rel_0_7.zip">zip</a> |
<a href="http://hg.sqlalchemy.org/sqlalchemy/archive/rel_0_7.tar.gz">gz</a> |
<a href="http://hg.sqlalchemy.org/sqlalchemy/archive/rel_0_7.tar.bz2">bz2</a>
</p>

<p>For further details on Mercurial repository access please see <a href="/develop.html">development</a>.</p>


<h2>License</h2>

<p>SQLAlchemy is covered by the <a href="http://www.opensource.org/licenses/mit-license.php">MIT License</a>.


