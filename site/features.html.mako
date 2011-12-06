<%inherit file="/base.mako"/>
<%!
    section = 'features'
%>
<%block name="head_title">
Features - SQLAlchemy
</%block>

<h1>Key Features of SQLAlchemy</h1>

<p><em>Some of the key features at a glance:</em></p>

<dl id="features">
    <dt>No ORM Required</dt>
    <dd>
        <p>SQLAlchemy consists of two distinct components, known as the 
        <strong>Core</strong> and the <strong>ORM</strong>.  The Core is itself
        a fully featured SQL abstraction toolkit, providing a smooth
        layer of abstraction over a wide variety of DBAPI implementations
        and behaviors, as well as a SQL Expression Language which allows
        expression of the SQL language via generative Python expressions.
        A schema representation system that can both emit DDL
        statements as well as introspect existing schemas, and a type
        system that allows any mapping of Python types to database types,
        rounds out the system.   The
        Object Relational Mapper is then an optional package which 
        builds upon the Core.  Many applications are built strictly
        on the Core, using the SQL expression system to provide succinct
        and exact control over database interactions.
    </p>
    </dd>
    <dt>Mature, High Performing Architecture</dt>
    <dd>
       <p>Over five years of constant development, profiling, and refactoring
       has led to a toolkit that is high performing and accurate, well covered
       in tests, and deployed in thousands of environments. With virtually
       every major component in its second or third full iteration, SQLAlchemy
       0.6 is roughly twice the speed of older 0.4 versions from just a few
       years ago. It's raw execution speed is competitive with comparable
       tools, and advanced ORM features like its unit of work, in-memory
       collections, eager loading of collections via joins or secondary
       subselects, and other optimizations allow SQLAlchemy's ORM to emit
       fewer and more efficient queries than in any previous version. </p>
     </dd>
    <dt>DBA Approved</dt>
    <dd>
            <p>Built to conform to what DBAs demand, including the ability to
            swap out generated SQL with hand-optimized statements, full usage
            of bind parameters for all literal values, fully transactionalized
            and batched database writes using the Unit of Work pattern. All
            object-relational patterns are designed around the usage of proper
            referential integrity, and foreign keys are an integral part of
            its usage.</p>
    </dd>

    <dt>Non-Opinionated</dt>
    <dd>
           <p>SQLAlchemy places the highest value on not getting in the way of
           database and application architecture. Unlike many tools, it
           <strong>never</strong> "generates" schemas (not to be confused with issuing
           user-defined <a
           href="http://en.wikipedia.org/wiki/Data_Definition_Language">DDL</a>,
           in which it excels) or relies on naming conventions of any kind.
           SQLAlchemy supports the widest variety of database and
           architectural designs as is reasonably possible.
    </dd>
    <dt>Unit Of Work</dt>

    <dd>
     <p>The Unit Of Work system, a central part of SQLAlchemy's Object
     Relational Mapper (ORM), organizes pending insert/update/delete
     operations into queues and flushes them all in one batch. To accomplish
     this it performs a topological "dependency sort" of all modified items in
     the queue so as to honor inter-row dependencies, and groups redundant
     statements together where they can sometimes be batched even further.
     This produces the maximum efficiency and transaction safety, and
     minimizes chances of deadlocks. Modeled after <a
     href="http://martinfowler.com/eaaCatalog/unitOfWork.html"
     title="martinfowler.com">Fowler's "Unit of Work" pattern</a> as well as
     <a href="http://hibernate.org/" title="hibernate.org">Hibernate</a>,
     Java's leading object-relational mapper.</p>
     </dd>

     <dt>Function-based query construction</dt>
     <dd>
    <p>Function-based query construction allows SQL clauses to be built via
    Python functions and expressions. The full range of what's possible
    includes boolean expressions, operators, functions, table aliases,
    selectable subqueries, insert/update/delete statements, correlated
    updates, selects, and <code>EXISTS</code> clauses, <code>UNION</code>
    clauses, inner and outer joins, bind parameters, and free mixing of
    literal text within expressions. Constructed expressions are compilable
    specific to any number of vendor database implementations (such as
    PostgreSQL or Oracle), as determined by the combination of a "dialect" and
    "compiler" provided by the implementation. </p>
    </dd>

    <dt>Modular and Extensible</dt>
    <dd>
            <p>Different parts of SQLAlchemy can be used independently of the
            rest. Elements like connection pooling, SQL statement compilation
            and transactional services can be used independently of each
            other, and can also be extended through various plugin points.
            An integrated event system allows custom code to be injected at
            over fifty points of interaction, including within core
            statement execution, schema generation and introspection, 
            connection pool operation, object relational configuration,
            persistence operations, attribute mutation events, and 
            transactional stages.   New SQL expression elements and custom
            database types can be built and integrated seamlessly.

            </p>
    </dd>

    <dt>Separate mapping and class design</dt>
    <dd>
    <p>The ORM standardizes on a "Declarative" configurational system that
        allows construction of user-defined classes inline with the table
        metadata they map to, in the same way most other object-relational
        tools provide.   However this system is totally optional - 
        at its core, the ORM considers the user-defined class, the 
        associated table metadata, and the mapping of the two to be entirely
        separate.   Through the use of the <code>mapper()</code> function,
        any arbitrary Python class can be mapped to a database table or view.
        Mapped classes also retain serializability (pickling) for usage
        in various caching systems.  </p>
  </dd>

  <dt>Eager-loading and caching of related objects and collections</dt>
  <dd>
        <p>The ORM caches collections and references between objects once 
            loaded, so that no SQL need be emitted on each access.
            The eager loading feature allows entire graphs
            of objects linked by collections and references to be loaded
            with few or just one query, configurable
            down to the exact statement count on a per-mapping or
            per-query basis, with no changes to existing queries 
            needed.   The "N+1" problem,
            whereby an ORM needs to emit individual statements for 
            all objects in a collection, is a thing of the
            past with SQLAlchemy.
        </p>
  </dd>
  <dt>Composite (multiple-column) primary keys</dt>
  <dd>
  <p>In SQLAlchemy, primary and foreign keys are represented as sets of
  columns; truly composite behavior is implemented from the ground up. The ORM
  has industrial strength support for meaningful (non-surrogate) primary keys,
  including mutability and compatibility with ON UPDATE CASCADE, as well as
  explicit support for other common composite PK patterns such as
  "association" objects (many-to-many relationships with extra meaning
  attached to each association). </p>
  </dd>


  <dt>Self-referential Object Mappings</dt>
  <dd>
  <p>Self-referential mappings are supported by the ORM. Adjacency list
  structures can be created, saved, and deleted with proper cascading, with no
  code overhead beyond that of non-self-referential structures. Loading of
  self-referential structures of any depth can be tuned to load collections
  recursively via a single statement with a series of joins (i.e. a
  joinedload), or via multiple statements where each loads the full set of
  records at a distinct level of depth (i.e. subqueryload). Persistence with
  tables that have mutually-dependent foreign key pairs (i.e. "many x"/"one
  particular x") are also supported natively using the "post update"
  feature.</p>
  </dd>

  <dt>Inheritance Mapping</dt>
  <dd>
            Explicit support is available for single-table, concrete-table,
            and joined table inheritance. Polymorphic loading (that is, a
            query that returns objects of multiple descendant types) is
            supported for all three styles. The loading of each may be
            optimized such that only one round trip is used to fully load a
            polymorphic result set.
    </dd>
    <dt>Raw SQL statement mapping</dt>
    <dd>
  <p> SQLA's object relational query facilities can accommodate raw SQL
  statements as well as plain result sets, and object instances can be
  generated from these results in the same manner as any other ORM operation.
  Any hyper-optimized query that you or your DBA can cook up, you can run in
  SQLAlchemy, and as long as it returns the expected columns within a rowset,
  you can get your objects from it. Statements which represent multiple kinds
  of objects can be used as well, with results received as named-tuples, or
  with dependent objects routed into collections on parent objects. </p>
  </dd>

  <dt>Pre- and post-processing of data</dt>
  <dd>
  <p> The type system allows pre- and post- processing of data, both at the
  bind parameter and the result set level. User-defined types can be freely
  mixed with built-in types. Generic types as well as SQL-specific types are
  available. </p>
  </dd>
    <dt>Supported Platforms</dt>
    <dd>
        <p>SQLAlchemy supports Python 2.4 and above, including Python 3.x.
        Jython is also supported, using zxjdbc-enabled dialects as well as 
        Pypy as of version 0.7.
    </dd>
     <dt>Supported Databases</dt>
     <dd>
        <p>SQLAlchemy includes dialects for SQLite, Postgresql, MySQL, Oracle,
        MS-SQL, Firebird, Sybase and others, most of which support multiple
        DBAPIs; IBM has also released a DB2 dialect. The corresponding <a
        href="http://www.python.org/dev/peps/pep-0249/">DB-API 2.0</a>
        implementation (or sometimes one of several available) is required to
        use each particular database. <a
        href="/docs/core/engines.html#supported-databases">View Current DBAPI
        Support</a></p>
    </dd>

</dl>
