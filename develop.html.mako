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
    <li><a href="#developers">Development Community</a></li>
    <li><a href="#source">Source Access</a></li>
    <li><a href="#pullrequests">Pull Requests</a></li>
    <li><a href="#testing">Testing</a></li>
    <li><a href="#integration">Continuous Integration</a></li>
    <li><a href="#documentation">Documentation</a></li>
    <li><a href="#style">Coding Guidelines</a></li>
    <li><a href="#environment">Development Environment</a></li>
    <li><a href="#sprints">Sprints</a></li>
</ul>

This section describes where to find information on development and some tips
on getting started.

<a name="developers"></a>
<h2>Development Community</h2>

<p>Where do you find the developers ?  Four places:</p>

<ul>
    <li>The <a href="/support.html#mailinglist">main mailing list</a> is the most 
        common - core devs assist users with issues of all kinds. All SqlAlchemy 
        Users and Third-Party Library authors are encouraged to participate here
        and seek support of any kind.
        </li>

    <li>A secondary <a href="https://groups.google.com/group/sqlalchemy-devel">
        development mailing list</a>, also hosted on Google groups, is dedicated
        to Developer concerns such as: release announcements, architectural and 
        developmental issues, and issues pertaining to Third-Party Library authors.
        This list is typically low traffic; all posts intended for this channel are
        welcome on the <a href="/support.html#mailinglist">main mailing list</a> .
        </li>

    <li>Development discussion continually occurs in the 
        <a href="https://gitter.im/sqlalchemy/devel">sqlalchemy/devel</a> gitter room
        througout the week. Discussion in this room is intended for users 
        who are interested in contributing code, tests, documentation, or other 
        developmental resources. This channel is the current preferred real-time
        discussion medium for SqlAlchemy contributors and hosts the 
        <a href="#scheduled-developer-meetings">Scheduled Developer Meetings</a>.
        </li>

    <li>There is a legacy <code>#sqlalchemy-devel</code> IRC channel on Freenode.
        This channel is <strong>only</strong> for users that are interested in
        contributing code, tests, documentation, or other developmental resources.
        <strong>No support issues will be addressed here.</strong>
        IRC-based support is available on the <a href="/support.html#irc">main 
        IRC channel</a>.
        This channel is considered to be a legacy format; users are encouraged to
        use the gitter room.
        </li>
</ul>

<a name="scheduled-developer-meetings"></a>
<h3>Scheduled Developer Meetings</h3>

<p>A real-time virtual meeting of core developers and contributers occurs in the
   <a href="https://gitter.im/sqlalchemy/devel">sqlalchemy/devel</a> gitter room
   on a regular basis. This meeting is intended to be held weekly at a regular time,
   but this may vary based on the availability of required members.  In advance of 
   every meeting, the room will contain a link to a document containing the Date, 
   Time and Agenda for the next scheduled meeting; currently this appears in the 
   "Subject Line" or "Title"  of the room. These meetings and their records are 
   open to the public. Users who are interested in contributing code, tests, 
   documentation, or other developmental resources are encouraged to attend.
   </p>


<a name="source"></a>
<h2>Source Access</h2>
<p>SQLAlchemy's source code is versioned using <a href="http://git-scm.com/">Git</a>.
The primary public repository is at <b>GitHub</b>:</p>

<ul>
<li><strong>GitHub:</strong> <a href="https://github.com/sqlalchemy/sqlalchemy/">https://github.com/sqlalchemy/sqlalchemy/</a>

<p>
<br/>
<code>
git clone https://github.com/sqlalchemy/sqlalchemy.git
</code>
</p>

</li>

</ul>


<a name="pullrequests"></a>
<h2>Pull Requests</h2>

<p>

Pull requests are submitted to the GitHub repository at <a href="https://github
.com/sqlalchemy/sqlalchemy">https://github.com/sqlalchemy/sqlalchemy</a>. Once
accepted for review, assuming the pull request is altering the code itself and
not just correcting documentation issues, code review occurs within our Gerrit
system at <a
href="https://gerrit.sqlalchemy.org">https://gerrit.sqlalchemy.org</a> where we
can review, modify, and run it through continuous integration tests with a high
degree of control and collaborative ability. The pull request will be closed
with a link to the review in Gerrit. Pull requests for code changes are never
merged directly.

</p>

<p>Please note the <b>Guidelines for Pull Requests</b> which modify
source code (e.g. not just documentation):

<ul>
<li><b>It is preferred to submit an issue in the issue tracker before submitting a
pull request, </b> particularly for major changes.
It is a frequent occurence that pull requests submitted either don't describe
what problem they intend to solve, or they solve the problem in an inappropriate
or sub-optimal way.   Having a bug or feature issue opened ahead of time
will allow us to to understand the use case and discuss the best approach
before the contributor makes the effort to write the code and tests.</li>

<li><b>Always include tests with the change in code</b> - SQLAlchemy does not
commit changes to code without a corresponding test - every line of code that
isn't tested is technically a bug in itself.  When a pull request is submitted
without tests, it <b>cannot be merged</b> until a test is written.  It is
extremely common that we receive a pull request that is one line long,
yet we need to write many dozens of lines to test it, since <b>99% of the work
for any code change is writing the tests</b>.  <b>Please don't submit
one-liner PRs without tests.  Only submit a <a href="participate.html#bugs">complete
bug report</a> for code changes where you aren't able to provide tests</b>.</li>

<li><b>Please follow up for requests for changes on the pull request, as well
as subscribe to the Gerrit review to receive comments.</b> - Pull requests where
requested changes are not responded towards will be closed.</li>

<li>Please make sure you are configured to run the current <a href="#environment">Development Environment</a>
    requirements, which will help ensure your PRs pass automatic tests.</li>

</ul>


<a name="testing"></a>
<h2>Testing</h2>

<p>

A critical task for anyone wishing to develop even small features or fixes is
to be proficient in running the tests,     and in the ideal case, being able to
write tests.  SQLAlchemy has over many thousands of tests which span in focus
from unit to integration, and a full continuous integration run over multiple
Python  versions and database backends runs well over <b>two hundred thousand
individual tests</b>.

By far the largest scope of development work, both on the
existing codebase as well as when any new feature or fix is     being
implemented, is in writing complete tests.   The tests for a particular change
or feature are generally     five to ten times as many lines of code as the
code for the actual behavior.  They also can be much more difficult to
write than the actual feature, often requiring a wide variety of difficult-to-
anticipate variants on the target behavior,     injection of behavior for
testing purposes, interception of generated SQL, events, or elements of DBAPI
messaging.

    </p>

<p>

Tests are run using <a href="http://pypi.python.org/pypi/pytest">py.test</a>.
A comprehensive guide to running the tests is     present in the     file
<a href="${self.attr.bb_base}/blob/master/README.unittests.rst">README.unittests</a>,
which is present in the source distribution. This file explains in detail how
tests can be run across many scopes, including how to run for specific databases
and how to select for specific tests.

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

The SQLAlchemy project uses Jenkins for continuous integration.   Our read-only
Jenkins interface is available at <a href="https://jenkins.sqlalchemy.org">https://jenkins.sqlalchemy.org</a>.

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
        <li>Please make sure you are configured to run the current <a href="#environment">Development Environment</a>
            requirements, which will help ensure your PRs pass automatic tests.</li>
    </ul>


<a name="environment"></a>
<h2>Development Environment</h2>

<p>The SQLAlchemy project has recently standardized to adopting a few conventions during development,
    most of which can be automatically enforced by a properly configured development environment.</p>
    <ul>
        <li>Source code formatting and other utilities are automatically applied using hooks in the <a href="https://pre-commit.com ">pre-commit</a> framework.
            `pre-commit` can be installed by running <code>pip install pre-commit</code>.</li>
        <li>Source code is formatted using Python Software Foundation's <a href="https://black.readthedocs.io/en/stable/">black</a>.
            `black` can be installed by running <code>pip install black</code>,
            however `pre-commit` should automatically install it in most situations.</li>
    </ul>
<p>TLDR; please ensure <a href="https://pre-commit.com ">pre-commit</a> is installed in your environment before beginning work on a Pull Request.
</p>


<a name="sprints"></a>
<h2>Sprints</h2>
<p>The SQLAlchemy project has an interest in attracting developers through sprints.   Currently,
    there are only occasional sprints typically annually at Pycon US, though not always.
    We are in need of assistance with planning, organizing and running sprints
    such that new developers are well prepared to contribute and learn about SQLAlchemy.
    Contributors who are interested in mentoring new developers at sprints or hosting other sprints during
    the year are encouraged to contact the developers, we would love to have more assistance in this area.
    </p>

