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



<%self:quote link="https://news.ycombinator.com/item?id=6989963" author="auvrw, Hacker News User">

A really solid, perhaps unique, library that, as far as i can tell,
completely addresses the "impedence mismatch" argument. If you're
directly using a database api in a structured way, you've probably
already reimplemented the sqlalchemy core, and refactoring your
program to use sqlalchemy will give you an orm, should you want one,
and make your code portable across database implementations even if
you don't. If you're already using an orm, refactoring to use
sqlalchemy will allow you to to start optimizing the low-level
database operations in a coherent way (i.e. not just sprinkling SQL
throughout the models).
</%self:quote>


<%self:quote link="http://www.reddit.com/r/programming/comments/q778v/taking_a_step_back_from_orms/c3vim8o" author="Rolegros, Reddit User">

<p>I'm the biggest proponent of correct, thought-of, and performant SQL where
I work, and I have to say that one ORM/database driver combination shifted my
opinions towards ORMs.</p>

<p>When you use SQLAlchemy (an ORM for python), you feel in complete control
of what is done for you behind the scenes.</p>

<p>First of all, they had the brilliant idea to build an abstraction over sql
BEFORE building an ORM, so that if you do not want to work with objects mapped
to your table, you can work with dictionaries directly, using a nice
sql-generation api which allows you to refactor/check your sql code in a
breeze.</p>

<p>Second, the ORM itself is fantastic. I don't really know how to explain it,
but you always feel in control of what happens. And if anything does not work
like you expect it to, you can always extend the framework. It is extremely
well suited for that. </p>
</%self:quote>

<%self:quote link="https://twitter.com/#!/mitsuhiko/status/173180120767545344/" author="Armin Ronacher, author of the Flask web framework, Jinja templates">
I demand SQLAlchemy to be renamed to SQLAwesome. No particular reason.
</%self:quote>

<%self:quote link="http://news.ycombinator.com/item?id=3526430" author="francoisdevlin, Hacker News User">
SQLAlchemy is one of the best designed libraries I have ever used for any
software task, period. I've done all sorts of crazy reflexive joins with it,
used the meta programming capabilities to bootstrap my ORM from nothing, added
my own rails like scope features to the session maker, etc. SQLAlchemy just
plain works(TM). If you're a Python guy, learning it is one of the best things
you can do.
</%self:quote>

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

