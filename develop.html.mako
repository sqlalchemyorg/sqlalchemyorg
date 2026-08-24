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
    <li><a href="#pullrequests">Pull Requests and AI Contributions</a></li>
    <li><a href="#testing">Testing</a></li>
    <li><a href="#integration">Continuous Integration</a></li>
    <li><a href="#documentation">Documentation</a></li>
    <li><a href="#style">Coding Guidelines</a></li>
    <li><a href="#environment">Development Environment</a></li>
</ul>

This section describes current practices for external contributions.

<a name="developers"></a>
<h2>Development Community</h2>

<p>Where can you find the Developers of SQLAlchemy ?</p>

<p><em>The Developers of SQLAlchemy kindly request all people participating in
these channels respect the <a href="/codeofconduct.html">Code of Conduct</a> when
seeking or providing support.</em></p>

<ul>
    <li>GitHub Discussions</li>
    <ul>
        <li>The <a href="/support.html#discussions">GitHub Discussions</a> forum is the most
            common - core devs assist users with issues of all kinds. All SQLAlchemy
            users and third-party library authors are encouraged to seek
            support here.
            </li>

    </ul>
    <li>Real-Time Communication</li>
    <ul>
        <li>Development discussion continually occurs in the
            <a href="https://gitter.im/sqlalchemy/devel">sqlalchemy/devel</a> Gitter room
            throughout the week. Discussion in this room is intended for users
            who are interested in contributing code, tests, documentation, or other
            developmental resources. This channel is the current preferred real-time
            discussion medium for SQLAlchemy contributors.
            Gitter based support is available via the
            <a href="https://gitter.im/sqlalchemy/community">sqlalchemy/community</a> Gitter
            room; more information on this is available on the
            <a href="/support.html#gitter">support</a> page.
            </li>
    </ul>
</ul>



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
<h2>Pull Requests and AI Contributions</h2>

<p>

The SQLAlchemy project and its related projects Alembic, Mako, dogpile.cache
accept PRs only on a <strong>limited, pre-approved basis</strong>.  Our
projects are open to outside contributions as pull requests for
<strong>significant, meaningful new use cases, refactorings, or fixes</strong>
which have been <strong>thoroughly discussed and agreed upon either in a
discussion, or an issue</strong>, amongst <em>humans</em>.   Like
everyone else, we receive a lot of issue comments, discussions etc. where the
content is obviously LLM generated.   We can't really prevent that from
happening, however people seeking to make meaningful contributions to
SQLAlchemy in the form of pull requests need to interact with us as humans, not
robots.</p>

<p>In the age of large language models (LLMs), the SQLAlchemy project receives a
significant influx of AI generated issues which are created with the goal of
submitting AI generated pull requests.   These issues are mostly of a similar
nature; either an edge-case issue in SQLAlchemy that was identified by an LLMs
which otherwise went unnoticed for years, or an existing old issue only needing
a small fix.   The PRs themselves, prior to our enacting of submission gates, followed
a wide range of quality levels, testing approaches, and architectural novelty.
All of this variation in what we receive, as well as that we have to interact
over the course of days with a remote author in order to get changes made, adds
significant burden to the tasks of human review and communication; while all the while,
the other end of the pull request is simply someone's LLM responding to us -
an interaction we could instead have with our own LLMs much more easily.
</p>

<p> All patches to SQLAlchemy are human reviewed, and we maintain strict
architectural standards even for code that's entirely AI submitted.  The truth
is that for this influx of small, edge case issues, it's much more efficient
for us to use our own LLMs to construct and submit patches internally, where we
can prompt it the way we want up front and handle followup revisions quickly
and accurately. Reviewing and revising what comes from random contributors is
actually more work.</p>

<p>The process for pull requests is then as follows:

</p>

<ol>
<li>a github issue describing the bug or use case must be posted
<strong>first</strong>.   We **strongly** prefer that outside contributors
start by posting a <a
href="https://github.com/sqlalchemy/sqlalchemy/discussions">Github
discussion</a>, which we can escalate to a real issue or issues as needed.</li>

<li>Once the github issue is posted, <strong>pull requests are not
accepted</strong> unless the label "open for pull requests" is added by the
maintainers to the issue.</li>

<li>Pull requests that are submitted which don't reference an issue, or
reference an issue that does not have the "open for pull requests" label, are
<strong>automatically closed</strong>.</li>

<li>If an issue is labeled as "open for pull requests", PR's are submitted to
the GitHub repository at
<a href="https://github.com/sqlalchemy/sqlalchemy">https://github.com/sqlalchemy/sqlalchemy</a>.
Once accepted for review, assuming the pull request is altering the code itself
and not just correcting documentation issues, code review occurs within our
Gerrit system at
<a href="https://gerrit.sqlalchemy.org">https://gerrit.sqlalchemy.org</a> where
we can review, modify, and run it through continuous integration tests with a
high degree of control and collaborative ability. The pull request will be
closed with a link to the review in Gerrit. Pull requests for code changes are
never merged directly.</li>

<li>The vast majority of issues that are easily addressible by a large language
model are <strong>not open for pull requests</strong>.  We need to assign our
own LLMs and humans to each patch regardless, and it's faster for us to keep
such patches on our side entirely.</li>
</ol>

<p>

The upshot of the above is that the SQLAlchemy project is not interested in
small PRs done by someone's robots; we can do that ourselves.
Thoughtful human contributors seeking meaningful engagement with the project
are as always welcome.

</p>


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
<p>TLDR; please ensure <a href="https://pre-commit.com ">pre-commit</a> is installed in your environment before beginning work on a pull request.
</p>


