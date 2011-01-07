<%inherit file="/base.mako"/>
<%!
section='community'
%>
<%def name="title()">
Community - SQLAlchemy
</%def>

<h1>Community</h1>

<h2>MAILING LIST</h2>

<p>The central SQLAlchemy discussion list can be found at <a href="http://groups.google.com/group/sqlalchemy">Google Groups.</a>  The list is moderated
for a new user's first post.

<table class="subscribe">
  <form action="http://groups.google.com/group/sqlalchemy/boxsubscribe">
	<tr><th colspan="2">Subscribe to the list !</th></tr>
  <tr > 
    <td>Email: <input type=text name=email></td>
    <td>
         <input type=submit name="sub" value="Subscribe">
    </td>
  </tr>
   </form>
</table>

</p>
<p >
A comprehensive archive of SQLAlchemy mailing list posts spanning across
previous lists is available at <a
href="http://dir.gmane.org/gmane.comp.python.sqlalchemy.user">Gmane</a>.
</p>

<h2>WIKI</h2>

<p>The <a href="/trac/">Trac Wiki</a> is a central point of information which
includes the <a href="/trac/wiki/FAQ">FAQ</a> and <a
href="/trac/wiki/DatabaseNotes">DatabaseNotes</a> sections, migration guides,
a place to <a href="/trac/query">query bug reports</a> and <a
href="/trac/newticket">log feature requests</a>, and to share <a
href="/trac/wiki/UsageRecipes">design patterns and advice</a>. Log in with the
username/password "guest"/"guest" to submit information.</p>



<h2>IRC</h2>

<p>24/7 access to regular SQLAlchemy users is available on <a
href="http://www.freenode.net">Freenode</a> IRC channel
<code>#sqlalchemy</code>.</p>

<h2>TWITTER</h2>

<p>Follow SQLAlchemy related musings and news at <a
href="http://twitter.com/#search?q=%23sqlalchemy">#sqlalchemy</a>.


<h2>STACK OVERFLOW</h2>

<p>Another place where fast answers to questions are often available, at <a
href="http://stackoverflow.com/questions/tagged/sqlalchemy">SQLAlchemy on
Stack Overflow</a>.</p>

