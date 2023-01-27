<%inherit file="/base.mako"/>
<%!
    section = 'home'
%>

## b10

<h1>The Python SQL Toolkit and Object Relational Mapper</h1>

<p>SQLAlchemy is the Python SQL toolkit and Object Relational Mapper that
gives application developers the full power and flexibility of SQL.</p>
<p>It provides a full suite of well known enterprise-level persistence
patterns, designed for efficient and high-performing database access, adapted
into a simple and Pythonic domain language.</p>

<dl id="features" class="features">
    <dt>Documentation</dt>
    <dd>
        <ul>
            <li><a href="${self.attr.docs_base}"><strong>Current Documentation (version ${self.attr.current_release})</strong></a> - learn SQLAlchemy here
                <ul>
                    <li><a href="${self.attr.docs_base}/intro.html#installation">Installation Guide</a></li>
                    <li><a href="${self.attr.docs_base}/orm/quickstart.html">ORM Quickstart</a></li>
                    <li><a href="${self.attr.docs_base}/tutorial/index.html">Comprehensive Tutorial</a></li>
                    <li><strong>Reference Guides</strong>
                        <ul>
                            <li><a href="${self.attr.docs_base}/orm/">Object Relational Mapping (ORM)</a></li>
                            <li><a href="${self.attr.docs_base}/core/">Core (Connections, Schema Management, SQL)</a></li>
                            <li><a href="${self.attr.docs_base}/dialects/">Dialects (specific backends)</a></li>
                        </ul>

                    </li>
                </ul>
            </li>
            <li><strong>Documentation by Version</strong>
                <ul class="version-listing">
                    <li><a href="${self.attr.docs_base}">Reference Documentation</a></li>
                </ul>

            </li>
        </ul>
    </dd>


    <dt>Learn More</dt>
    <dd>
        <ul>
            <li><a href="/library.html"><strong>Library</strong></a> - Articles and Talks
                <ul>
                <li><a href="/library.html#talks">Talks and Tutorials</a></li>
                <li><a href="/library.html#architecture">Architecture</a></li>
                </ul>
            </li>
            <li><strong>Front Matter</strong>

            <ul>
                <li><a href="#philosophy">SQLAlchemy's Philosophy</a></li>
                <li><a href="/features.html">Overview of Key Features</a></li>
                <li><a href="/quotes.html">Testimonials</a></li>
            </ul>

            </li>
        </ul>
    </dd>

    <dt>Resources</dt>
    <dd>
            <ul>
                <li><a href="/download.html">Release History / Download Information</a></li>
                <li><a href="/blog/">News and Announcements</a></li>
                <li><strong>Community</strong>
                    <ul>
                        <li><a href="/support.html">Getting Support</a></li>
                        <li><a href="/participate.html">Participate in the Project</a></li>
                        <li><a href="/develop.html">Get Involved with Development</a></li>
                        <li><a href="/codeofconduct.html">Code of Conduct</a></li>
                    </ul>
                </li>
            </ul>
        </ul>
    </dd>
</dl>

<a name="philosophy"></a>

<h2>SQLALCHEMY'S PHILOSOPHY</h2>

<p class="philos">SQL databases behave less like object collections the more
size and performance start to matter; object collections behave less like
tables and rows the more abstraction starts to matter. SQLAlchemy aims to
accommodate both of these principles.</p>

<p>SQLAlchemy considers the database to be a relational algebra engine,
    not just a collection of tables.   Rows can be selected from not only
    tables but also joins and other select statements; any of these
    units can be composed into a larger structure.   SQLAlchemy's expression
    language builds on this concept from its core.</p>

<p>SQLAlchemy is most famous for its object-relational mapper (ORM), an optional
    component that provides the <strong>data mapper pattern</strong>, where
    classes can be mapped to the database in open ended, multiple ways -
    allowing the object model and database schema to develop in a cleanly
    decoupled way from the beginning.</p>

<p>SQLAlchemy's overall approach to these problems is entirely different
from that of most other SQL / ORM tools, rooted in a so-called <strong>complimentarity-</strong>
oriented approach; instead of hiding away SQL and object relational details behind a
wall of automation, all processes are <strong>fully exposed</strong> within a series of composable, transparent tools.  The library takes on the job of automating redundant tasks while the developer remains in control of how the database is organized and how SQL is constructed.</p>

<p>The main goal of SQLAlchemy is to change the way you think about databases
and SQL! </p>

<p><strong>Read some <a href="/features.html"><strong>key features</strong></a> of SQLAlchemy,
    as well as <a href="/quotes.html"><strong>what people are saying</strong></a> about SQLAlchemy.</strong>
    </p>





