<%inherit file="/base.mako"/>
<%namespace name="tools" file="/tools.mako"/>
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

<%tools:vertical_nav>
<%tools:vertical_nav_item
    url="#reference"
    url_text="Reference Documentation"
    content="- SQLAlchemy's own documentation, incuding tutorials"
/>
<%tools:vertical_nav_item url="#talks" url_text="Talks and Tutorials" content="- videos from PyCon and elsewhere"/>
<%tools:vertical_nav_item url="#architecture" url_text="Architecture" content="- deep architectural dives"/>
<%tools:vertical_nav_item url="#citations" url_text="Citing SQLAlchemy"/>
</%tools:vertical_nav>

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



<a name="talks"></a>
<a name="tutorials"></a>

<%def name="talk(title, presented, author, links=[], anchor=None)">
	<%
		if not anchor:
			anchor = re.sub(r'\W', '', title.lower())
	%>
    <div class="talk card mb-1">
        <div class="card-body">
            <h5 class="card-title">
                <a name="${anchor}"></a><em>${title}</em> - ${presented}
                <a class="headerlink" href="#${anchor}">¶</a>
            </h5>
            <h6 class="card-subtitle mb-2 text-muted">Author: ${author}</h6>
            % if hasattr(caller, 'embed'):
                ${caller.embed()}
            % endif
            <p class="card-text">${caller.body()}</p>
            % if links:
            <ul>
            % for desc, url in links:
                <li><a href="${url}">${desc}</a></li>
            % endfor
            </ul>
            % endif
        </div>
    </div>
</%def>


<h2>Talks and Tutorials</h2>
<p>A wide variety of talks and tutorials both by SQLAlchemy creators and users have been presented
at many conferences worldwide.   Here's a selection:

<ul>
	<%self:talk
			title="SQLAlchemy 2.0 - The One-Point-Four-Ening 2021"
			presented="Python Web Conf 2021"
			author="Mike Bayer"
			links="${[
				('Video', 'https://www.youtube.com/watch?v=1Va493SMTcY&list=PLt4L3V8wVnF4iB8pGfkR7eozIJPwCM7vv&index=1&t=865s'),
				('Student Download', 'https://github.com/zzzeek/sqla_tutorial'),
			]}"
		>
		<%def name="embed()">
        <iframe width="${videowidth}" height="${videoheight}" src="//www.youtube.com/embed/1Va493SMTcY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

		</%def>
        This is the newest version of the "getting started" tutorial that presents
        SQLAlchemy from the perspective of the new 2.0 series.
	</%self:talk>



	<%self:talk
			title="SQLAlchemy 2.0"
			presented="Recorded November 10, 2021"
			author="Michael Kennedy and Mike Bayer"
			links="${[
                ('Video', 'https://www.youtube.com/watch?v=q5Iv6RUxKC8'),
				('Podcast Homepage', 'https://talkpython.fm/episodes/show/344/sqlalchemy-2.0')
			]}">
		<%def name="embed()">
        <iframe width="560" height="315" src="https://www.youtube.com/embed/q5Iv6RUxKC8" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
		</%def>
		A second interview with Mike Bayer in the <i>Talk Python to me Podcast</i> series;
        this episode previews some of the highlights of SQLAlchemy 2.0.
	</%self:talk>


	<%self:talk
			title="Introduction to SQLAlchemy"
			presented="presented at many Pycon and other conferences"
			author="Mike Bayer"
			links="${[
				('Slides', 'https://speakerdeck.com/zzzeek/introduction-to-sqlalchemy-pycon-2013'),
				('Video at PyCon 2013', 'http://www.youtube.com/watch?v=woKYyhLCcnU'),
				('Video at PyGotham 2014', 'https://www.youtube.com/watch?v=vunIDi9Z-_8'),
				('Prerequisite Material', 'http://techspot.zzzeek.org/files/2013/pycon2013_student_package.tar.gz'),
			]}"
		>
		<%def name="embed()">
		<iframe width="${videowidth}" height="${videoheight}" src="//www.youtube.com/embed/woKYyhLCcnU" frameborder="0" allowfullscreen></iframe>

		</%def>
        This tutorial is the more "classic" tutorial that presents a fast paced
		but beginner-focused tutorial on what SQLAlchemy is all about.   While the
		tutorial has evolved over the years and at this point is fairly fixed;
        see the newer "2.0" tutorial for a the latest version that is changed a
        bit more substantially.
	</%self:talk>

	<%self:talk
			title="SQLAlchemy and data access in Python"
			presented="Recorded April 9, 2015"
			author="Michael Kennedy and Mike Bayer"
			links="${[
				('Podcast Homepage', 'http://www.talkpythontome.com/episodes/show/5/sqlalchemy-and-data-access-in-python')
			]}">
		<%def name="embed()">
		<a href="http://www.talkpythontome.com/episodes/show/5/sqlalchemy-and-data-access-in-python"><img src="/img/podcast_2015.png"/></a>
		</%def>
		An interview with Mike Bayer in the <i>Talk Python to me Podcast</i> series.
		Discusses the history of the project and how it has evolved over time.
	</%self:talk>


	<%self:talk
			title="Building the App"
			presented="presented at Pycon North America, 2014"
			author="Mike Bayer"
			links="${[
				('Video', 'http://www.youtube.com/watch/5SSC6nU314c'),
				('Slides', 'https://speakerdeck.com/zzzeek/building-the-app'),
				('Sample Pyramid Application', 'https://github.com/zzzeek/pycon2014_atmcraft'),
				('Java Client', 'https://github.com/zzzeek/pycon2014_atmcraft_java'),
			]}">
		<%def name="embed()">
		<a href="https://www.youtube.com/watch?v=5SSC6nU314c"><img src="/img/pycon2014.png" width="600"/></a>
		</%def>

		In this talk we'll illustrate a simple web application using SQLAlchemy, showing off the style of development that SQLAlchemy is most geared towards, the so-called "foundational" style which provides for development and maintainance of custom conventions which then service the needs of the model declarations and use case implementations.
	</%self:talk>

	<%self:talk
			title="The SQLAlchemy Session - In Depth"
			presented="presented at Pycon Canada, 2012"
			author="Mike Bayer"
			links="${[
				('Slides', 'https://speakerdeck.com/zzzeek/the-sqlalchemy-session-in-depth'),
				('Video', 'https://www.youtube.com/watch?v=PKAdehPHOMo'),
				('HTML Demo', 'http://techspot.zzzeek.org/files/2012/session.html.tar.gz')
			]}"
		>
		<%def name="embed()">
		<iframe width="${videowidth}" height="${videoheight}" src="//www.youtube.com/embed/PKAdehPHOMo" frameborder="0" allowfullscreen></iframe>

		</%def>

		A detailed walkthrough of SQLAlchemy's Session, describing the
		rationale for its existence, its driving philosophies, and
		finally a walkthrough of Session lifecycle through the use of
		an animated diagram. We'll cover how the relational database
		refers to database rows within a transaction, and how the
		Session has over the years developed a tight, proxied
		integration with this lifecycle.

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
		<iframe width="${videowidth}" height="${videoheight}" src="//www.youtube.com/embed/E09qigk_hnY" frameborder="0" allowfullscreen></iframe>
		</%def>
		This talk describes why SQLAlchemy has always been called a "toolkit", detailing the software construction mindset for which SQLAlchemy was designed to be used with.  The talk refers to this
		as the "Hand Coded" approach, and has an emphasis on user-created patterns and conventions,
		along with explicit exposure of relational structures.    This talk
                describes how SQLAlchemy abides by what has been described as the <a href="http://queue.acm.org/detail.cfm?id=2841313">complimentarity principle of automation</a> (not to be confused with the more common physics term), allowing the library's work to be exposed as
		a series of transparent automation tools, rather than as an opaque wall hiding
		the details.
	</%self:talk>

	<%self:talk
			title="Introduction to SQLAlchemy Core"
			presented="presented at Pycon North America, 2014"
			author="Jason Meyers"
			links="${[
				('Video', 'http://www.youtube.com/watch/0PSdzUxRYpA')
			]}"
		>
		<%def name="embed()">
		<a href="http://www.youtube.com/watch/0PSdzUxRYpA"><img src="/img/pycon2014_sqla_core.png" width="600"/></a>
		</%def>
		This talk provides a broad-based introduction to SQLAlchemy Core library. It is focused on someone new to SQLAlchemy Core, who has experience with other database technologies such as Django or SQLAlchemy ORM. We'll cover the differences between the domain-centric models of those tools compared to the schema-centric model and how we can use that to deal with common and unusual data sources.
	</%self:talk>


	<%self:talk
		title="Sane Schema Migrations with Alembic and SQLAlchemy"
		presented="presented at Pycon North America, 2014"
		author="Selena Deckelmann"
		links="${[
			('Slides', 'http://bit.ly/1iGL5lQ'),
			('Video', 'http://www.youtube.com/watch?v=_ZdqwCr4c7Q')
		]}">
		<%def name="embed()">
		<a href="http://www.youtube.com/watch?v=_ZdqwCr4c7Q"><img src="/img/pycon2014_migrations.png" width="600"/></a>
		</%def>
	Working with developers on schema migrations is a perennial challenge for DBAs and developers. Devs tend to like a "set it and forget it" tool. This talk discusses the strategies used to move from a pure SQL and shell migration system to using SQLAlchemy and <a href="https://alembic.sqlalchemy.org">Alembic</a> for maximum DBA and developer happiness.
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
		<iframe width="${videowidth}" height="${videoheight}" src="//www.youtube.com/embed/399c-ycBvo4" frameborder="0" allowfullscreen></iframe>
		</%def>

		Too often, programmers use ORMs to hide from their database and avoid learning how it works. Instead, I encourage programmers to learn a bit of SQL and become familiar with the problems that database queries are designed to solve well. In this talk, I outline the basics of using SQLAlchemy to craft efficient queries and avoid several common database query anti-patterns.
	</%self:talk>

	<%self:talk
		title="SQLAlchemy - an Architectural Retrospective"
		presented="presented at PyGotham 2011"
		author="Mike Bayer"
		links="${[
				('Slides', 'https://speakerdeck.com/zzzeek/sqlalchemy-an-architectural-retrospective'),
				('Video', 'https://archive.org/details/pyvideo_499___pygotham-2011-sqlalchemy-an-architectural-retrospective')
		]}"
	>
	<%def name="embed()">

<iframe src="https://archive.org/embed/pyvideo_499___pygotham-2011-sqlalchemy-an-architectural-retrospective" width="640" height="480" frameborder="0" webkitallowfullscreen="true" mozallowfullscreen="true" allowfullscreen></iframe>

	</%def>
	This talk walks through some highlights of SQLAlchemy internal
	design  and methodology, based on the (now published) chapter for the
	"Architecture of Open Source Applications" book. We'll have a
	little bit of SQLAlchemy philosophy, an overview of the Core, and
	then a 500-ft view of how the ORM goes about things, with plenty
	of cool looking diagrams.

	</%self:talk>

	<%self:talk
		title="Python SQLAlchemy Tutorial"
		presented="on the Python Central website"
		author="Xiaonuo Gantan"
		links="${[
				('Index', 'http://www.pythoncentral.io/series/python-sqlalchemy-database-tutorial/'),
				('Introductory Tutorial', 'http://www.pythoncentral.io/introductory-tutorial-python-sqlalchemy/'),
				('How to Install SQLAlchemy', 'http://www.pythoncentral.io/how-to-install-sqlalchemy/'),
				('Comparison to other ORMs', 'http://www.pythoncentral.io/sqlalchemy-vs-orms/'),
				('Overview of Expression Language and ORM Queries', 'http://www.pythoncentral.io/overview-sqlalchemys-expression-language-orm-queries/'),
				('Commonly Asked Questions', 'http://www.pythoncentral.io/sqlalchemy-faqs/'),
				('ORM Examples', 'http://www.pythoncentral.io/sqlalchemy-orm-examples/'),
				('Association Tables', 'http://www.pythoncentral.io/sqlalchemy-association-tables/'),

			]}"
		>
		A series of beginner-focused SQLAlchemy tutorials covering a wide range
		of basic topics.  While a lot of the information here is derived from
		the main documentation, the pace is slower and there are also details
		culled from other sources, including performance tips, comparison to other
		ORMs, and design philosophies.  A very good effort by author Xiaonuo Gantan.

	</%self:talk>

	<%self:talk
		title="SQLAlchemy Tutorial"
		presented="on the Zetcode tutorial website"
		author="Jan Bodnar"
		anchor="zetcodetutorial"
		links="${[
			('SQLAlchemy Tutorial',
				'http://zetcode.com/db/sqlalchemy/')
		]}"
	>
	This is a "nutshell" style tutorial that quickly introduces the major
	areas of SQLAlchemy using simple examples, covering raw SQL, schema concepts,
	SQL Expression language, and the ORM including querying and relationships.
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


<a name="architecture"></a>
<h2>Architectural Documentation</h2>
<p>
A SQLAlchemy chapter was written for the book <a href="http://aosabook.org/"><em>The Architecture of Open Source Applications</em></a> in 2011.  This chapter includes an in-depth introduction to the key concepts
behind both the Core and ORM components of SQLAlchemy:

<ul>
<li><a href="http://aosabook.org/en/sqlalchemy.html">SQLAlchemy at Architecture of Open Source Applications</a></li>
</ul>
</p>

<a name="citations"></a>
<h2>Citing SQLAlchemy</h2>

<p>
Please cite SQLAlchemy if you use it in your research. You can cite the
chapter from <a href="http://aosabook.org/en/sqlalchemy.html">SQLAlchemy at Architecture of Open Source Applications</a> as introduced in the previous section:

<ul>
<li>Michael Bayer. SQLAlchemy. In Amy Brown and Greg Wilson, editors, <b>The Architecture of Open Source Applications Volume II: Structure, Scale, and a Few More Fearless Hacks</b> 2012 <a href="http://aosabook.org">http://aosabook.org</a></li>
</ul>

Here is an example BibTeX entry:

<pre class="mt-2 small-text">
@incollection{sqlalchemy,
  place={Mountain View},
  title={SQLAlchemy},
  booktitle={The Architecture of Open Source Applications Volume II: Structure, Scale, and a Few More Fearless Hacks},
  publisher={aosabook.org},
  url="http://aosabook.org/en/sqlalchemy.html",
  author={Bayer, Michael},
  editor={Brown, Amy and Wilson, Greg},
  year={2012}
}
</pre>

</p>
