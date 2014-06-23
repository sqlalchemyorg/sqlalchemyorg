<%inherit file="/base.mako"/>
<%!
    section = 'download'

    rel_09 = "0.9.6"
    rel_08 = "0.8.6"

%>
<%block name="head_title">
Download - SQLAlchemy
</%block>

<h1>Get SQLAlchemy</h1>

<h2>Version 0.9</h2>

<p>Latest 0.9 Release: <b>${rel_09}</b>

<a href="http://www.python.org/pypi/SQLAlchemy/${rel_09}"><b>(${rel_09} via Cheeseshop)</b></a>

<a href="/changelog/CHANGES_${rel_09.replace('.', '_')}"><b>(CHANGES)</b></a></p>

<p>SQLAlchemy ${rel_09} is signed using Michael Bayer's PGP key id <a href="http://pgp.mit.edu:11371/pks/lookup?search=0xC4DAFEE1&op=index">C4DAFEE1</a> (use <code>gpg --recv-keys C4DAFEE1</code> to import).</p>

<p>Please be sure to review the 0.8 to 0.9 migration guide, found at <a
href="/docs/09/changelog/migration_09.html"><b>09Migration</b></a>, for full details on changes
made since 0.8.</p>


<h2>Version 0.8</h2>

<p>Latest 0.8 Release: <b>${rel_08}</b>

<a href="http://www.python.org/pypi/SQLAlchemy/${rel_08}"><b>(${rel_08} via Cheeseshop)</b></a>

<a href="/changelog/CHANGES_${rel_08.replace('.', '_')}"><b>(CHANGES)</b></a></p>

<p>SQLAlchemy ${rel_08} is signed using Michael Bayer's PGP key id <a href="http://pgp.mit.edu:11371/pks/lookup?search=0xC4DAFEE1&op=index">C4DAFEE1</a> (use <code>gpg --recv-keys C4DAFEE1</code> to import).</p>

<p>Please be sure to review the 0.7 to 0.8 migration guide, found at <a
href="/docs/08/changelog/migration_08.html"><b>08Migration</b></a>, for full details on changes
made since 0.7.</p>


<a name="development"/>
<h2>Development Versions</h2>

<p><a href="https://bitbucket.org/zzzeek/sqlalchemy/">SQLAlchemy on Bitbucket</a></p>
<p><a href="https://github.com/zzzeek/sqlalchemy/">SQLAlchemy on GitHub</a></p>


<p>For further details on Git repository access please see <a href="/develop.html">development</a>.</p>


<h2>License</h2>

<p>SQLAlchemy is covered by the <a href="http://www.opensource.org/licenses/mit-license.php">MIT License</a>.


