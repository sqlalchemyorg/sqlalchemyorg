<%inherit file="/involved_base.mako"/>
<%namespace name="tools" file="/tools.mako"/>
<%!
section='involved'
%>
<%block name="head_title">
Develop - SQLAlchemy
</%block>

<h1>Develop</h1>

<ul>
    <li><a href="#roster">Developer Roster</a></li>
    <li><a href="#developers">Development Community</a></li>
    <li><a href="#source">Source Access</a></li>
    <li><a href="#testing">Testing</a></li>
    <li><a href="#integration">Continuous Integration</a></li>
    <li><a href="#documentation">Documentation</a></li>
    <li><a href="#style">Coding Guidelines</a></li>
    <li><a href="#sprints">Sprints</a></li>
</ul>

This section describes where to find information on development and some tips
on getting started.

<a name="roster"></a>
<h2>Developer Roster</h2>
<p>Modern releases of SQLAlchemy include a core developer list.   The names of developers
    who are currently or have been critical to our progress are in this file,
    the current version of which can be seen at <a href="${self.attr.bb_base}/src/master/AUTHORS">AUTHORS</a>.
</p>
<p>A list of all developers who have ever contributed to SQLAlchemy, even a single patch,
     is maintained at <a href="${self.attr.bb_base}/wiki/Contributors">Contributors</a>.
</p>

<a name="developers"></a>
<h2>Development Community</h2>

<p>Where do you find the developers ?   Three places:</p>

<ul>
    <li>The <a href="/support.html#mailinglist">main
    mailing list</a> is the most common - core devs assist users with issues of all kinds.</li>
    <li>Developer discussion takes place
    on the <a href="http://groups.google.com/group/sqlalchemy-devel">development mailing list</a>,
    also hosted on Google groups.  Anyone can join this
    list, though we ask that discussion be limited to architectural and developmental issues only.
    </li>
    <li>Some development discussion occurs on the
    <code>#sqlalchemy-devel</code> IRC channel on Freenode.
    This channel is <strong>only</strong> for users that are interested in contributing code,
    tests, documentation, or other developmental resources, and no support issues will be
    addressed here.   IRC-based support is available on the
    <a href="/support.html#irc">main IRC channel</a>.</li>
</ul>

<a name="source"></a>
<h2>Source Access</h2>
<p>SQLAlchemy's source code is versioned using <a href="http://git-scm.com/">Git</a>.
Public repositories are available at <a href="https://bitbucket.org/">Bitbucket</a> and
<a href="https://github.com/">Github</a>:</p>

<ul>
<li><strong>Bitbucket:</strong> <a href="https://bitbucket.org/zzzeek/sqlalchemy/">https://bitbucket.org/zzzeek/sqlalchemy/</a>

<p>
<br/>
<code>
git clone https://bitbucket.org/zzzeek/sqlalchemy.git
</code>
</p>

</li>

<li><strong>Github:</strong> <a href="https://github.com/zzzeek/sqlalchemy">https://github.com/zzzeek/sqlalchemy</a>

<p>
<br/>
<code>
git clone https://github.com/zzzeek/sqlalchemy.git
</code>
</p>

</li>
</ul>

<p>Changes can be shared with core developers using pull
    requests to either of these services.  Patch files can also be submitted as
    attachments to <a href="/participate.html#bitbucket">Bitbucket issues</a>.</p>

<p>Major release branches are maintained using branches.  For example, to get at the 0.8 branch, the tag
is called <code>rel_0_8</code>:</p>

<p>
  <code>
  git clone -b rel_0_8 https://bitbucket.org/zzzeek/sqlalchemy.git sa08<br/>
  </code>
</p>

<p>
Downloadable snapshots of the current default and maintenance branches are available on the <a href="/download.html">download</a> page.
</p>


<a name="testing"></a>
<h2>Testing</h2>

<p>A critical task for anyone wishing to develop even small features or fixes is to be proficient in running the tests,
    and in the ideal case, being able to write tests.  SQLAlchemy has over 3000 tests which span in focus from unit to integration.
    By far the largest scope of development work, both on the existing codebase as well as when any new feature or fix is
    being implemented, is in writing complete tests.   The tests for a particular change or feature are generally
    five to ten times as many lines of code as the code for the actual behavior.  They also can be much more difficult to
    write than the actual feature, often requiring a wide variety of difficult-to-anticipate variants on the target behavior,
    injection of behavior for testing purposes, interception of generated SQL, events, or elements of DBAPI messaging.
    </p>

<p>The tests run using <a href="http://pypi.python.org/pypi/nose">Nose</a>.   A comprehensive guide to running the tests is
    present in the
    file <a href="${self.attr.bb_base}/src/master/README.unittests.rst">README.unittests</a>, which is available in the distribution.
    After downloading the source distribution of SQLAlchemy, this file explains in detail how tests can be run,
    overall, for specific databases, and specific tests.   Ideally, any patch that's given to use via Trac or similar
    should be tested in the default branch against the full test suite.   We of course do this in any case but the patch
    which takes this into account is always preferable.
    </p>

    <p>The tests themselves have been written over the course of many years, and stylistically have evolved.   We try
    to upgrade old tests to newer styles as we become more proficient and advanced in our methodologies,
    but there are still many tests that are in need of an upgrade.   Our current preferred style, keeping in mind
    that many of our tests are certainly not yet in this style, is as follows:</p>

    <ul>
        <li>Tests should stick to <a href="http://www.python.org/dev/peps/pep-0008/">PEP8</a>.
            Many older tests currently do not; this is an area
            in which we welcome new help.</li>
        <li>
            Test just one thing.   A series of individual assertions are best broken up into individual
            test methods, rather than one test method with several assertions. </li>
        <li>Maintain per-test state as local to a test fixture.   That is, if a series of tests are all
            against a specific table structure, the test fixture should prepare the table metadata and
            associate it with <code>self</code> or <code>cls</code>.   The test suite has standard fixtures which
            help greatly with this process, under <code>test/lib/fixtures.py</code>.</li>
        <li>Don't test against a database backend if not needed.   Many kinds of tests only need
            to ensure that a particular SQL string is rendered.   We have a comprehensive set of
            fixtures which allow SQL strings to be captured and asserted without any database round
            trip needed.</li>
    </ul>

<a name="integration"></a>
<h2>Continuous Integration</h2>

<p>We run a <a href="http://jenkins.sqlalchemy.org">Jenkins</a> server for continuous integration
    at <a href="http://jenkins.sqlalchemy.org">jenkins.sqlalchemy.org</a>.
    A quick overview of how wide a variety of scenarios our tests need to run within can be seen here.</p>

<a name="documentation"></a>
<h2>Documentation</h2>

<p>Documentation builds using <a href="http://pypi.python.org/pypi/Sphinx/">Sphinx</a>.
    New developers can be very helpful if they are willing
    to write new documentation, or to work on current documentation, adding new examples,
    fixing typos, improving inter-documentation
    linkage.   This is also some of the most important and difficult work for the project.
    As is the case with
    testing, good documentation takes up a significantly larger amount of time to
    create than the feature itself being documented.  It's not as fun to write documentation
    for most developers as it is to write actual code, but a developer who is willing and
    able to do so is tremendously valuable to the project.
    </p>

<a name="style"></a>
<h2>Code Guidelines</h2>

<p>We hope to expand this section.   For now, some key things to keep in mind:</p>
    <ul>
        <li>Try to stick to <a href="http://www.python.org/dev/peps/pep-0008/">PEP8</a> as much as possible.
            Our line width is 78 characters and we tend to break lines on backslashes rather than parenthesis;
            in particular SQLAlchemy generative queries are most easy to read broken up along backslashes.</li>
        <li>New features can only be added if they have associated documentation that
            runs under <a href="#documentation">Sphinx.</a></li>
        <li>No feature or bug fix is ever committed without full <a href="#testing">unit tests</a>
            to as much a degree as possible.</li>
    </ul>
<a name="sprints"></a>
<h2>Sprints</h2>
<p>The SQLAlchemy project has a great interest in attracting developers through sprints.   Currently
    there is only one official "sprint" per year at Pycon US.   We are in need of assistance for planning
    these sprints such that new developers are well prepared to contribute and learn about SQLAlchemy.
    Contributors who are interested in mentoring new developers at sprints or hosting other sprints during
    the year are encouraged to contact the developers, we would love to have more assistance in this area.
    </p>

