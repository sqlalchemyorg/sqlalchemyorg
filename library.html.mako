<%inherit file="/base.mako"/>
<%!
import re
section = 'library'

videoheight=360
videowidth=640
videowidth43=480

%>
<%block name="head_title">
Library - SQLAlchemy
</%block>

<h1>Library</h1>

<p>
A wide array of documentation both official and non-official exists
for SQLAlchemy.   The following is a guide to the some of the best information
available.

<ul>
    <li><a href="#reference">Reference Documentation</a></li>
    <li><a href="#architecture">Architecture</a></li>
    <li><a href="#talks">Talks</a></li>
    <li><a href="#tutorials">Tutorials</a></li>
    <li><a href="#recipes">Recipes</a></li>
</ul>

</p>

<a name="reference"></a>
<h2>Reference Documentation</h2>
<p>
	The SQLAlchemy Reference Documentation is by far the most important place
	for both the newest user and the veteran alchemist.   The Reference Documentation
	represents an ongoing effort that rivals that of the
	SQLAlchemy project itself, and is constantly evolving to be ever more
	complete and navigable.   The newest versions of the documentation will
	be the most up-to-date and accurate; features and behaviors that were
	only introduced in more recent versions should always be noted.

    <ul class="version-listing">
        <li><a href="http://docs.sqlalchemy.org">Reference Documentation</a></li>
    </ul>
</p>

<a name="architecture"></a>
<h2>Architectural Documentation</h2>
<p>
A SQLAlchemy chapter was written for the book <a href="http://aosabook.org/"><em>The Architecture of Open Source Applications</em></a> in 2011.  This chapter includes an in-depth introduction to the key concepts
behind both the Core and ORM components of SQLAlchemy:

<ul>
<li><a href="http://aosabook.org/en/sqlalchemy.html">SQLAlchemy at Architecture of Open Source Applications</a></li>
</ul>
</p>


<a name="talks"></a>

<%def name="talk(title, presented, author, links=[])">
	<%
		link = re.sub(r'\W', '', title.lower())
	%>
	<li>
		<h3>
			<a name="${link}"></a><em>${title}</em> - ${presented}
			<a class="headerlink" href="#${link}">¶</a>
		</h3>
		<p>Author: ${author}</p>
	    % if hasattr(caller, 'embed'):
	    	${caller.embed()}
	    % endif
	    <p>${caller.body()}</p>
	    % if links:
	    <ul>
	    % for desc, url in links:
	    	<li><a href="${url}">${desc}</a></li>
	    % endfor
	    </ul>
	    % endif
    </li>
</%def>


<h2>Talks</h2>
<p>A wide variety of talks both by SQLAlchemy creators and users have been presented
at many conferences worldwide.   Here's only a choice few of them:

<ul>
	<%self:talk
			title="Building the App"
			presented="presented at Pycon North America, 2014"
			author="Mike Bayer"
			links="${[
				('Slides', 'https://speakerdeck.com/zzzeek/building-the-app'),
				('Sample Pyramid Application', 'https://bitbucket.org/zzzeek/pycon2014_atmcraft'),
				('Java Client', 'https://bitbucket.org/zzzeek/pycon2014_atmcraft_java/')
			]}">
		<%def name="embed()">
		<iframe width="${videowidth}" height="${videoheight}" src="//www.youtube.com/embed/5SSC6nU314c?feature=player_embedded" frameborder="0" allowfullscreen></iframe>

		</%def>
		In this talk we'll illustrate a simple web application using SQLAlchemy, showing off the style of development that SQLAlchemy is most geared towards, the so-called "foundational" style which provides for development and maintainance of custom conventions which then service the needs of the model declarations and use case implementations.
	</%self:talk>

	<%self:talk
			title="Introduction to SQLAlchemy Core"
			presented="presented at Pycon North America, 2014"
			author="Jason Meyers"
		>
		<%def name="embed()">
		<iframe width="${videowidth}" height="${videoheight}" src="//www.youtube.com/embed/0PSdzUxRYpA?feature=player_embedded" frameborder="0" allowfullscreen></iframe>
		</%def>
		This talk provides a broad-based introduction to SQLAlchemy Core library. It is focused on someone new to SQLAlchemy Core, who has experience with other database technologies such as Django or SQLAlchemy ORM. We'll cover the differences between the domain-centric models of those tools compared to the schema-centric model and how we can use that to deal with common and unusual data sources.
	</%self:talk>


	<%self:talk
		title="Sane Schema Migrations with Alembic and SQLAlchemy"
		presented="presented at Pycon North America, 2014"
		author="Selena Deckelmann"
		links="${[
			('Slides', 'http://bit.ly/1iGL5lQ'),
		]}">
		<%def name="embed()">
		<iframe width="${videowidth}" height="${videoheight}" src="//www.youtube.com/embed/_ZdqwCr4c7Q?feature=player_embedded" frameborder="0" allowfullscreen></iframe>
		</%def>
	Working with developers on schema migrations is a perennial challenge for DBAs and developers. Devs tend to like a "set it and forget it" tool. This talk discusses the strategies used to move from a pure SQL and shell migration system to using SQLAlchemy and <a href="https://bitbucket.org/zzzeek/alembic">Alembic</a> for maximum DBA and developer happiness.
	</%self:talk>

	<%self:talk
			title="Flexing SQLAlchemy's Relational Power"
			presented="presented at Pycon US, 2012"
			author="Brandon Rhodes"
			links="${[
				('Slides', 'http://rhodesmill.org/brandon/slides/2012-03-pycon/sqla-talk/'),
				('Video', 'http://www.youtube.com/watch?v=399c-ycBvo4'),
			]}"
		>
		<%def name="embed()">
		<iframe width="${videowidth}" height="${videoheight}" src="//www.youtube.com/embed/399c-ycBvo4?feature=player_detailpage" frameborder="0" allowfullscreen></iframe>
		</%def>

		Too often, programmers use ORMs to hide from their database and avoid learning how it works. Instead, I encourage programmers to learn a bit of SQL and become familiar with the problems that database queries are designed to solve well. In this talk, I outline the basics of using SQLAlchemy to craft efficient queries and avoid several common database query anti-patterns.
	</%self:talk>

	<%self:talk
			title="The SQLAlchemy Session - In Depth"
			presented="presented at Pycon Canada, 2012"
			author="Mike Bayer"
			links="${[
				('Slides', 'https://speakerdeck.com/zzzeek/the-sqlalchemy-session-in-depth'),
				('Video', 'http://pyvideo.org/video/1600/the-sqlalchemy-session-in-depth'),
				('HTML Demo', 'http://techspot.zzzeek.org/files/2012/session.html.tar.gz')
			]}"
		>
		<%def name="embed()">
		<iframe width="${videowidth}" height="${videoheight}" src="//www.youtube.com/embed/PKAdehPHOMo?feature=player_embedded" frameborder="0" allowfullscreen></iframe>

		</%def>
		This talk describes why SQLAlchemy has always been called a "toolkit", detailing the software construction mindset for which SQLAlchemy was designed to be used with.  The talk refers to this
		as the "Hand Coded" approach, and has an emphasis on user-created patterns and conventions,
		along with explicit exposure of relational structures.
	</%self:talk>

	<%self:talk
			title="Hand Coded Applications with SQLAlchemy"
			presented="presented at Pycon US, 2012"
			author="Mike Bayer"
			links="${[
				('Slides', 'https://speakerdeck.com/zzzeek/hand-coded-applications-with-sqlalchemy'),
				('Video', 'http://www.youtube.com/watch?v=E09qigk_hnY'),
			]}"
		>
		<%def name="embed()">
		<iframe width="${videowidth}" height="${videoheight}" src="//www.youtube.com/embed/E09qigk_hnY?feature=player_detailpage" frameborder="0" allowfullscreen></iframe>
		</%def>
		This talk describes why SQLAlchemy has always been called a "toolkit", detailing the software construction mindset for which SQLAlchemy was designed to be used with.  The talk refers to this
		as the "Hand Coded" approach, and has an emphasis on user-created patterns and conventions,
		along with explicit exposure of relational structures.
	</%self:talk>

	<%self:talk
		title="SQLAlchemy - an Architectural Retrospective"
		presented="presented at PyGotham 2011"
		author="Mike Bayer"
		links="${[
				('Slides', 'https://speakerdeck.com/zzzeek/sqlalchemy-an-architectural-retrospective'),
				('Video', 'http://pyvideo.org/video/499/pygotham-2011--sqlalchemy--an-architectural-retro')
		]}"
	>
	<%def name="embed()">


<video preload="auto" controls="" style="width: ${videowidth43}px ! important; height: ${videoheight}px ! important;">
<source src="http://05d2db1380b6504cc981-8cbed8cf7e3a131cd8f1c3e383d10041.r93.cf2.rackcdn.com/pygotham-2011/499_pygotham-2011-sqlalchemy-an-architectural-retrospective.ogv"></source>
</video>


	</%def>
	This talk walks through some highlights of SQLAlchemy internal
	design  and methodology, based on the (now published) chapter for the
	"Architecture of Open Source Applications" book. We'll have a
	little bit of SQLAlchemy philosophy, an overview of the Core, and
	then a 500-ft view of how the ORM goes about things, with plenty
	of cool looking diagrams.

	</%self:talk>
</ul>
</p>


<a name="tutorials"></a>
<h2>Tutorials</h2>
<p>The most up-to-date and complete tutorials available for getting started with SQLAlchemy
are the <a href="${self.attr.docs_base}/core/tutorial.html">Core</a> and <a href="${self.attr.docs_base}/orm/tutorial.html">ORM</a> tutorials included with SQLAlchemy's own documentation.   There's a few other good
resources available as well:

<ul>

	<%self:talk
			title="Introduction to SQLAlchemy"
			presented="presented at many Pycon and other conferences"
			author="Mike Bayer"
			links="${[
				('Slides', 'https://speakerdeck.com/zzzeek/introduction-to-sqlalchemy-pycon-2013'),
				('Video', 'http://www.youtube.com/watch?feature=player_embedded&v=woKYyhLCcnU'),
				('Prerequisite Material', 'http://techspot.zzzeek.org/files/2013/pycon2013_student_package.tar.gz'),
			]}"
		>
		<%def name="embed()">
		<iframe width="${videowidth}" height="${videoheight}" src="//www.youtube.com/embed/woKYyhLCcnU?feature=player_detailpage" frameborder="0" allowfullscreen></iframe>

		</%def>
		This is Mike Bayer's own "getting started" tutorial that presents a fast paced
		but beginner-focused tutorial on what SQLAlchemy is all about.   While the
		tutorial has evolved over the years and at this point is fairly fixed.
		The "Prerequisite Material" is highly recommended and includes a PDF introductory
		guide as well as a self-installing, runnable code demo that's used in the
		tutorial.
	</%self:talk>

	<%self:talk
		title="SQLAlchemy + URL Dispatch Wiki Tutorial"
		presented="Part of the Pylons Documentation"
		author="Chris McDonough"
		links="${[
			('SQLAlchemy + URL Dispatch Wiki Tutorial',
				'http://docs.pylonsproject.org/projects/pyramid/en/latest/tutorials/wiki2/index.html')
		]}"
	>
	This is the official tutorial for SQLAlchemy integration within the
	<a href="http://www.pylonsproject.org/">Pyramid Web Framework</a>.  The basic
	steps to integrate SQLAlchemy within a traditional web application are laid
	out here and are mostly in conformance with those guidelines referenced
	by SQLAlchemy's documentation.

	</%self:talk>
</ul>

</p>


<a name="recipes"></a>
<h2>Recipes</h2>
<p>
SQLAlchemy is a recipe-focused library; while it includes a tremendous number of features,
overall the emphasis is on that of creating a composable toolkit, so that users can
build their own database interaction layers that suit them best.  To help with this task,
there's a huge number of "recipes", code examples geared towards specific use cases.
These are currently split out among the SQLAlchemy reference documentation and the wiki:

<ul>
	<li><a href="${self.attr.docs_base}/en/rel_0_9/orm/examples.html">SQLAlchemy ORM Examples</a> - in the SQLAlchemy documentation</li>
	<li><a href="${self.attr.bb_base}/wiki/UsageRecipes">Theatrum Chemicum</a> - large list of recipes old and new on the wiki</li>
</ul>
</p>

