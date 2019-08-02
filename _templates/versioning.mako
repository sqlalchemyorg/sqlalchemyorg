<h2>Version Numbering Scheme</h2>

<%block filter="zf.filters.rst.opts(initial_header_level=3)">
All projects within the `SQLAlchemy Organization
<https://github.com/sqlalchemy>`_ use the same version numbering scheme, which
is like that of many projects, a modified "semantic versioning" scheme.  It is
based roughly on the `Python version numbering scheme
<https://docs.python.org/3/faq/general.html#how-does-the-python-version-numbering-scheme-work>`_,
with slight adjustments to suit the particular needs of SQLAlchemy and Alembic:

Given a version number like "1.3.6", we can break it up into **major**, **minor**,
and **point** release.

Point Releases
^^^^^^^^^^^^^^

Point releases are the most common release series, occurring as often as every few
weeks or less for active projects.   A point release
should  **always be fully compatible for any project to move to that
version with no changes, given a particular major/minor series.**.  This means, if a
project is on version 1.2.3 of SQLAlchemy, in the ideal case this project
should be able to upgrade directly to the latest 1.2.x series,  such as 1.2.19
without the need to move to interim releases.

A point release includes three categories of change:

* **Bug fixes** - the primary purpose of a point release is to release fixes for bugs
  with no backwards incompatible changes being made.  A bug fix that is
  determined to be too risky towards backwards compatibility will instead be
  pushed into a minor release.

* **Use case additions**  - A "use case" is a category of change that falls in
  between a "bug fix" and a "feature", and they most often apply to support for
  new database capabilities.   As new database capabilites are created  or
  requested by users continuously, and usually refer to particular datatypes or
  small SQL syntaxes, these capabilities are often added to a point release
  provided they don't break backwards compatibility within SQLAlchemy or within
  Alembic migrations.  Larger use case additions are released within a minor
  release.

* **Small feature additions**  - As the release cycle for point releases are every
  few weeks, whereas the release cycle for a minor release is usually at least a
  year or more, feature additions that have no impact on any current code or
  APis will often be included in point releases; an example would be the `ability to create
  sub-options on an ORM loader option <https://docs.sqlalchemy.org/latest/changelog/changelog_13.html#change-dd0f089772d6d70336d9f15737495fe8>`_.

Note that while point releases are the most conservative and frequent release
stream, it is always possible that an accidental regression may be introduced.
It is advised that projects always fully test their software including the use
of test suites and/or staging environments when upgrading to a new version of
any SQLAlchemy organization software.


Minor Releases
^^^^^^^^^^^^^^

Minor releases in SQLAlchemy are actually kind of "major" events as they
typically take a year to produce; for related projects, minor releases
may come less frequently.  A change in minor release
means that the project includes changes that are **typically backwards compatible
within the range of not-previously-deprecated APIs and current Python versions,
with some risk of non-backwards compatibility**, particularly within SQLAlchemy
itself; this risk is usually unavoidable due to the nature of the changes.

For this reason, a minor release is not really that "minor" for SQLAlchemy itself, and
there is always
an `extensive migration notes <https://docs.sqlalchemy.org/latest/changelog/index.html#current-migration-guide>`_ section describing in great detail
every API adjustment and behavioral change which may need to be identified.
For other projects, a minor release typically refers to changes in Python version
support, such as dropping support for Python 2.6, or Alembic dropping support for
SQLAlchemy 0.9; a general idea of what's new is in the changelog.

A minor release, particularly in SQLAlchemy itself, will include:

* **Major new features** - new API features and capabilities, as well as structural
  and performance improvements, are part of every minor release for
  SQLAlchemy itself and very often for related projects.  These additions are
  generally fully backwards-compatible, however as they often change lots of
  code internally, there is a higher risk of regressions, particularly in
  SQLAlchemy; these regressions are usually worked out within the first few
  point releases of a new minor release.   As always, downstream applications should run their
  test suites and report any issues with a new minor release.

* **Behavioral changes** - Most behavioral changes are subtle and unlikely to cause issues
  in the general case.   These changes may however be backwards-incompatible with
  end-user code that is either relying upon a previously broken behavior, or
  which was working around the old behavior which will no longer produce the
  same result.   A typical example is a SQL rendering that was previously not
  quoting or escaping correctly, which is then repaired; downstream applications
  will typically be working around this problem by applying the quoting manually,
  which becomes redundant once SQLAlchemy repairs it.  An example of such a change
  is `The column-level COLLATE keyword now quotes the collation name <https://docs.sqlalchemy.org/en/latest/changelog/migration_12.html#the-column-level-collate-keyword-now-quotes-the-collation-name>`_,
  which adds quoting to database collation names which must be specified in
  a case sensitive manner.

  Behavioral changes that aren't expected to cause issues are nonetheless
  documented in case some unforeseen issue arises; an example is  `FOR UPDATE
  clause is rendered within the joined eager load subquery as well as outside¶
  <https://docs.sqlalchemy.org/en/latest/changelog/migration_13.html#for-update-clause-is-rendered-within-the-joined-eager-load-subquery-as-well-as-outside>`_,
  which modifies how "FOR UPDATE" is rendered in a SELECT that includes joined
  eager loading.  This change impacts users of MySQL the most, as it works
  around a known MySQL issue and will suddenly start locking table rows from
  a related table in a joined-eager load, whereas this was not the case before
  on this particular backend.

* **API Deprecations** - SQLAlchemy and related projects attempt to add new deprecations
  only within a minor release and not within a point release.   Any deprecated
  API should to the greatest degree possible emit a ``DeprecationWarning`` when
  that API is used.  While this was not always the case for older versions, the
  goal is that deprecations are only added in minor releases and that they
  should emit warnings when used.   This is so that projects have an entire
  minor release cycle to migrate off the old API and that the deprecation is
  easy to recognize.

* **Removal of previously deprecated APIs** - an API that was deprecated in a
  particular minor release may be removed as soon as the next minor release, though
  often a deprecated API will remain for multiple minor releases.    In modern
  releases, deprecated APIs should be emitting warning when used throughout the
  span of a particular minor release.


Major releases
^^^^^^^^^^^^^^^^^^^

Major releases refer to the general maturity state of the project, which is a
multi-year status.   A project begins with 0, e.g. sqlalchemy-collectd-0.0.4,
which indicates the range of maturity from initial alpha releases into
long-term stable releases, with the notion that major breaking changes may
occur across each minor release. At major version 1, the project is considered
to be mature.  Major version 2 and higher each indicate major new shifts for the
project of a similar nature as that of Python 2 to Python 3.

</%block>
