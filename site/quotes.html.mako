<%inherit file="/base.mako"/>
<%!
    section = 'features'
%>

<%block name="head_title">
What People Are Saying - SQLAlchemy
</%block>

<h1>What People are Saying about SQLAlchemy</h1>

<%def name="quote(link, author)">
    <blockquote class="box">
    <p>${caller.body()}</p> 
    <p>- <i><a href="${link}">${author}</a></i></p>
    </blockquote>
</%def>

<%def name="link(url, author=None)">
    <blockquote class="box">
    <p><a href="${url}">${caller.body()}</a></p>
    % if author:
        <p>
        <i>- ${author}</i>
        </p>
    % endif
    </blockquote>
</%def>


<%self:quote link="http://www.reddit.com/r/Python/comments/p03yh/sqlalchemy_vs_django_db/c3lk2dy" author="sisyphus, Reddit User">
...it's the kind of library that not only solves the need it addresses but
recommends the language it's written in--when I think about a language other
than Python for some project involving a database my first thought is always,
'but what would replace SQLAlchemy?'
</%self:quote>


<%self:quote link="https://twitter.com/#!/janerist/status/157889517670498304" author="Jan-Erik Strøm">
Lost faith in ORMs after many battles with Hibernate/Entity Framework/whatnot. SQLAlchemy restores it. ORM done right.
</%self:quote>

<%self:quote link="http://tarekziade.wordpress.com/2011/07/12/firefox-sync-python/#comment-11602" author="Tarek Ziadé, core Firefox Sync developer">
There’s a lot of Python libraries/frameworks out there we can use, and some of
them are a big advantage to write web services. SQLAlchemy is one that comes
in mind, that is one of the best ORM/DB tool out there, all languages
included, to my knowledge.
</%self:quote>

<%self:quote link="https://twitter.com/christianwitts/status/88562051064147968" author="Christian Witts">
Loving #SQLAlchemy for #Python right now. It just did 95% of the heavy lifting for me. "Lazy" programming is the best!
</%self:quote>

<%self:quote link="https://twitter.com/simonyun/status/74182857605652480" author="Simon Yun">
Then realized I have schema defined in SQLAlchemy. Used it to recreate my schema in PostgreSQL. Booyah. 
Best ORM I've seen. In any language.
</%self:quote>

<%self:quote link="https://twitter.com/frostiebot/status/51352369291739136" author="frostiebot / Chris Goodnight">
#sqlalchemy is seriously the best ORM. No other ORM in any other language even comes close.
</%self:quote>

<%self:quote link="http://griddlenoise.blogspot.com/2007/10/catching-up.html" author="Jeff Shell, Zope Wizard">
The only toolkit that's even better? SQLAlchemy. It's pretty much the only
way I'll interact with RDBMS systems in Python from this point out. And I
don't mean I'll be writing every RDBMS interaction as an object-relational
mapping. SQLAlchemy is great because it provides a good connection / pooling
infrastructure; a good Pythonic query building infrastructure; and then a good
ORM infrastructure that is capable of complex queries and mappings (as well as
some pretty stone-simple ones).
</%self:quote>

<%self:quote link="http://www.artima.com/weblogs/viewpost.jsp?thread=193479" author="Bruce Eckel, Author of <u>Thinking in Java</u>">
SQLAlchemy is a pretty amazing design...In SQLAlchemy, you need to
explicitly start a session. What's amazing is that all the changes you make
during that session are kept in some kind of parse tree, and then when the
session ends SQL is created on-the-fly to produce a single, optimal SQL
statement for that particular sequence of changes. I found this idea pretty
mind-blowing.
</%self:quote>

<%self:quote link="http://bewest.wordpress.com/2006/09/06/the-toolbox/#comment-13" author="Daniel Lyons">
I've been using SQLAlchemy for about two days now and I can tell you, it's
without compare. The ORM is the most flexible I've ever seen. It's freaking
magic.
</%self:quote>

<%self:link url="http://homepage.mac.com/s_lott/iblog/architecture/C465799452/E20070518134041/" author="S. Lott">
Just for a moment, I thought I'd found something SQLAlchemy
doesn't do perfectly.
</%self:link>

<%self:quote link="http://an9.org/devdev/node/73" author="Andy Smith">
As a user of all kinds of ORMs and a write of plenty of my own, I've got to
say I am extremely impressed by SQLAlchemy...It is wonderfully documented, and
has a great philosophy. If you are using anything else, you should definitely
try this.
</%self:quote>

<%self:quote link="http://coderseye.com/2006/sqlalchemy-another-great-sql-frameword.html" author="Bruce Kroeze">
Very sweet, and very quick to get going on my Mac development and Linux
deployment environments. I'm currently collecting data from three different
databases (SQLite, PostgreSQL, and MySql) on five different servers. This is a
killer app for me.

I'll be exploring its object-relational capabilities soon, but I am already
very fond of the framework, and how lightweight it feels.
</%self:quote>

<%self:quote link="http://www.mail-archive.com/sqlalchemy-users@lists.sourceforge.net/msg02566.html" author="Michael Carter">
Using SQLAlchemy has certainly changed the way I think about database access
when I'm designing an application.
</%self:quote>

