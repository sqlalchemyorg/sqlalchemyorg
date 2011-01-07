<%inherit file="/base.mako"/>
<%!
    section = 'home'
%>

<h1>The Python SQL Toolkit and Object Relational Mapper</h1>

<p>SQLAlchemy is the Python SQL toolkit and Object Relational Mapper that
gives application developers the full power and flexibility of SQL.</p>
<p>It provides a full suite of well known enterprise-level persistence
patterns, designed for efficient and high-performing database access, adapted
into a simple and Pythonic domain language.</p>

<h2>SQLALCHEMY'S PHILOSOPHY</h2>

<p class="philos">SQL databases behave less like object collections the more
size and performance start to matter; object collections behave less like
tables and rows the more abstraction starts to matter. SQLAlchemy aims to
accommodate both of these principles.</p>

<p>SQLAlchemy doesn't view databases as just collections of tables; it sees
them as relational algebra engines. Its object relational mapper enables
classes to be mapped against the database in more than one way. SQL constructs
don't just select from just tables&#8212;you can also select from joins,
subqueries, and unions. Thus database relationships and domain object models
can be cleanly decoupled from the beginning, allowing both sides to develop to
their full potential.</p>

<p>The main goal of SQLAlchemy is to change the way you think about databases
and SQL! </p>

<p>Most importantly, <b>SQLAlchemy is not just an ORM.</b> Its data
abstraction layer allows construction and manipulation of SQL expressions in a
platform agnostic way, and offers easy to use and superfast result objects, as
well as table creation and schema reflection utilities. No object relational
mapping whatsoever is involved until you import the <code>orm</code> package.
Or use SQLAlchemy to write your own !</p>

<p><a href="/quotes.html"><b>Read what people are saying about
SQLAlchemy.</b></a></p>

<table>

    <tr class="feature">
        <td class="featurename">
            Scales Up
        </td>
        <td class="featuredesc">
            <p>Powerful enough for complicated tasks, such as:</p>
            <ul>
            <li>Load whole graphs of objects and their dependent objects in one step, with fine grained control over how many
            SELECT statements to emit</li>
            <li>Map recursive adjacency structures automatically</li>
            <li>Map objects to not just tables but to any arbitrary join or select statement</li>
            <li>Persist and modify structures of any complexity in one step</li>
            <li>Map class inheritance hierarchies to tables in a variety of ways</li>
            <li>Handle composite keys, natural primary keys and ON UPDATE CASCADE with ease</li>
            <li>Interface with multiple databases simultaneously</li>
            <li>Make use of the target database's specific syntaxes and features when desired</li>
            <li>Work with transactionalized behavior from the ground up, including SAVEPOINT and two-phase transactions, 
                  in a high-level and database-agnostic manner</li>
            </ul>

        </td>
    </tr>

    <tr class="feature">
        <td class="featurename">
            Scales Down
        </td>
        <td class="featuredesc">
            <p>Extremely easy to use for all the basic tasks, such as:</p>
            <ul>
            <li>Constructing SQL from Python expressions</li>
            <li>Loading a pre-existing schema into expression constructs and ORM mappings</li>
            <li>Pooling database connections</li>
            <li>Issuing DDL (i.e. CREATE / DROP statements)</li>
            <li>Loading objects from the database and saving changes back</li>
            </ul>

        </td>
    </tr>

    <tr class="feature">
        <td class="featurename">
            DBA Approved
        </td>
        <td class="featuredesc">
            <p>Built to conform to what DBAs demand, including the ability to
            swap out generated SQL with hand-optimized statements, full usage
            of bind parameters for all literal values, fully transactionalized
            and batched database writes using the Unit of Work pattern. All
            object-relational patterns are designed around the usage of proper
            referential integrity, and foreign keys are an integral part of
            its usage.</p>
        </td>
    </tr>

    <tr class="feature">
        <td class="featurename">
           Non-Opinionated
        </td>
        <td class="featuredesc">
           <p>SQLAlchemy places the highest value on not getting in the way of
           database and application architecture. Unlike many tools, it
           <b>never</b> "generates" schemas (not to be confused with issuing
           user-defined <a
           href="http://en.wikipedia.org/wiki/Data_Definition_Language">DDL</a>,
           in which it excels) or relies on naming conventions of any kind.
           SQLAlchemy supports the widest variety of database and
           architectural designs as is reasonably possible.
        </td>
    </tr>
    <tr class="feature">
        <td class="featurename">
            Modular and Extensible
        </td>
        <td class="featuredesc">
            <p>Different parts of SQLAlchemy can be used independently of the
            rest. Elements like connection pooling, SQL statement compilation
            and transactional services can be used independently of each
            other, and can also be extended through various plugin points. The
            Object Relational Mapper (ORM) is a separate package which builds
            on top of these, and itself has several extension systems for
            modifying behavior at various levels.</p>

           <p>SQLAlchemy's extensible nature has spawned a whole community of
           plugins and third party extensions, including:</p>
            <ul>
              <li><a href="http://code.google.com/p/sqlalchemy-migrate/">Migrate</a></li>
              <li><a href="http://elixir.ematia.de/">Elixir</a></li>
              <li><a href="http://www.geoalchemy.org/">GeoAlchemy</a></li>
              <li><a href="http://www.python-camelot.com/">Camelot</a></li>
              <li><a href="http://code.google.com/p/contentmirror/">contentmirror</a></li>
              <li><a href="http://code.google.com/p/formalchemy/">FormAlchemy</a></li>
              <li><a href="http://pypi.python.org/pypi/z3c.sqlalchemy/">z3c.sqlalchemy</a></li>
              <li><a href="http://pypi.python.org/pypi?%3Aaction=search&term=sqlalchemy&submit=search">See more on Pypi</a></li>
            </ul>

        </td>
    </tr>
    <tr class="feature">
        <td class="featurename">
            Community Supported
        </td>
        <td class="featuredesc">
                <p>SQLAlchemy has a substantially sized community, with over
                2200 mailing list users and well over 10000 downloads a month.
                It is the default ORM for most of the popular web frameworks,
                including <a href="http://www.pylonshq.com">Pylons</a>, <a
                href="http://www.turbogears.org">Turbogears</a> and <a
                href="http://grok.zope.org/">Grok</a>. It's used in a growing
                number of applications and third party add ons (see <a
                href="/trac/wiki/SAApps">the current known list</a>).
        </p>
        <p>Development is similarly active, with an active developer count
        hovering around ten, between 150-500 commits per month and a typical
        release pace of one point release per month, one major version release
        every six months (see <a href="/trac">SQLAlchemy Trac</a> for
        development timeline and project information</a>).
        </p>
        </td>
    </tr>

</table>

<p>Check out some of the <a href="/features.html">key features</a> or dive
straight into the <a href="/docs/orm/tutorial.html">tutorial</a> &#8212; then
<a href="/download.html">download!</a></p>




