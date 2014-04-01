<%inherit file="/base.mako"/>
<%!
    section = 'library'
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

<%def name="talk(title, presented, author, links)">
	<li>
		<h3>
			<em>${title}</em> - ${presented}
		</h3>
		<p>Author: ${author}</p>
	    <p>${caller.body()}</p>
	    <ul>
	    % for desc, url in links:
	    	<li><a href="${url}">${desc}</a></li>
	    % endfor
	    </ul>
    </li>
</%def>


<h2>Talks</h2>
<p>A wide variety of talks both by SQLAlchemy creators and users have been presented
at many conferences worldwide.   Here's only a choice few of them:

<ul>
	<%self:talk
			title="The SQLAlchemy Session - In Depth"
			presented="presented at Pycon Canada, 2012"
			author="Mike Bayer"
			links="${[
				('Slides', 'http://techspot.zzzeek.org/files/2012/session.key.pdf'),
				('Video', 'http://pyvideo.org/video/1600/the-sqlalchemy-session-in-depth'),
				('HTML Demo', 'http://techspot.zzzeek.org/files/2012/session.html.tar.gz')
			]}"
		>
		This talk describes why SQLAlchemy has always been called a "toolkit", detailing the software construction mindset for which SQLAlchemy was designed to be used with.  The talk refers to this
		as the "Hand Coded" approach, and has an emphasis on user-created patterns and conventions,
		along with explicit exposure of relational structures.
	</%self:talk>

	<%self:talk
			title="Hand Coded Applications with SQLAlchemy"
			presented="presented at Pycon US, 2012"
			author="Mike Bayer"
			links="${[
				('Slides', 'http://techspot.zzzeek.org/files/2012/hand_coded_with_sqla.key.pdf'),
				('Video', 'http://www.youtube.com/watch?v=E09qigk_hnY'),
			]}"
		>
		This talk describes why SQLAlchemy has always been called a "toolkit", detailing the software construction mindset for which SQLAlchemy was designed to be used with.  The talk refers to this
		as the "Hand Coded" approach, and has an emphasis on user-created patterns and conventions,
		along with explicit exposure of relational structures.
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
		Too often, programmers use ORMs to hide from their database and avoid learning how it works. Instead, I encourage programmers to learn a bit of SQL and become familiar with the problems that database queries are designed to solve well. In this talk, I outline the basics of using SQLAlchemy to craft efficient queries and avoid several common database query anti-patterns.
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


