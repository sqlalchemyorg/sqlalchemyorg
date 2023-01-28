<%inherit file="/feature_base.mako"/>
<%!
    section = 'philosophy'
%>
<%block name="head_title">
Philosophy - SQLAlchemy
</%block>


<h1>SQLAlchemy's Philosophy</h1>

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

