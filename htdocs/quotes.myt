<%flags>
        inherit='/base.myc'
</%flags>
<%attr>
        section='quotes'
</%attr>
<%method title>
Quotes - SQLAlchemy
</%method>

<h1>User Quotes</h1>

<%def quote>
	<%args>
		link
		author
	</%args>
<blockquote class="box">
<p><% m.content() %> - <i><a href="<% link %>"><% author %></a></i></p>
</blockquote>
</%def>

User comments on SQLAlchemy, from the mailing list and culled from the web...

<&|quote, link="http://an9.org/devdev/node/73", author="Andy Smith"&>
As a user of all kinds of ORMs and a write of plenty of my own, I've got to say I am extremely impressed by SQLAlchemy...It is wonderfully documented, and has a great philosophy. If you are using anything else, you should definitely try this.
</&>

<&|quote, link="http://coderseye.com/2006/sqlalchemy-another-great-sql-frameword.html", author="Bruce Kroeze"&>
Very sweet, and very quick to get going on my Mac development and Linux deployment environments. I'm currently collecting data from three different databases (SQLite, PostgreSQL, and MySql) on five different servers. This is a killer app for me.

I'll be exploring its object-relational capabilities soon, but I am already very fond of the framework, and how lightweight it feels.
</&>

<&|quote, link="http://www.mail-archive.com/sqlalchemy-users@lists.sourceforge.net/msg02566.html", author="Michael Carter"&>
Using SQLAlchemy has certainly changed the way I think about database access when I'm designing an application.
</&>

<&|quote, link="http://bewest.wordpress.com/2006/09/06/the-toolbox/#comment-13", author="Daniel Lyons"&>
I've been using SQLAlchemy for about two days now and I can tell you, it's without compare. The ORM is the most flexible Iv'e ever seen. It's freaking magic.
</&>
