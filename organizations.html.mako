<%inherit file="/base.mako"/>
<%!
    section = 'features'
%>
<%block name="head_title">
Organizations - SQLAlchemy
</%block>

<h1>Organizations using SQLAlchemy</h1>

<p>This is just a partial list of organizations that have
    rolled out using SQLAlchemy.</p>

<p>Using SQLAlchemy in production ?   We'd love to add your logo and details about your
    company or project here.  Please contact mike(&amp;)zzzcomputing.com.</p>

<%def name="user(name, logo, url, anchor=None)">
    <dt>
        % if anchor:
            <a name="${anchor}"></a>
        % endif
        <a href="${url}"><img src="/img/logos/${logo}" alt="${name}"></a>
    </dt>
    <dd>${caller.body()}</dd>
</%def>

<dl id="inproduction">


<%self:user
        name="OpenStack",
        logo="openstack.png"
        url="http://www.openstack.org"
        anchor="openstack">
        <a href="http://www.openstack.org">OpenStack</a> is a widely used
        open source cloud computing platform.  With OpenStack, anyone can run
        a private or public cloud on the hardware of their choosing.  OpenStack
        was first founded by NASA and Rackspace, and today is supported by an
        enormous community of contributors and users, shepherded
        by a consortium of sponsors including Red Hat, Rackspace, Hewlett Packard,
        Mirantis, IBM, and dozens more.   The majority of OpenStack's
        components are written in Python and interact heavily with relational
        database storage, where the SQLAlchemy ORM is used for all database
        interaction.
</%self:user>

<%self:user
        name="Reddit",
        logo="reddit.png"
        url="http://reddit.com",
        anchor="reddit">
        <a href="http://reddit.com">Reddit</a> is one of the biggest social
        news aggregators on the internet. Reddit is built using Pylons, Mako templates,
        and a custom, non-ORM database abstraction layer built on SQLAlchemy Core.
</%self:user>

<%self:user
        name="RideLink"
        logo="ridelink.png"
        url="https://ridelink.com/"
        anchor="ridelink"
>
    <a href="https://ridelink.com/">RideLink</a> is an online community where car
    owners can safely rent their cars directly to drivers, making money in the process.
    Most of our services layer is written in Python, using Pyramid and SQLAlchemy.
</%self:user>

<%self:user
        name="Level 12"
        logo="level12.png"
        url="http://www.level12.io"
        anchor="level12">
        <a href="http://www.level12.io">Level 12</a> is a web & database
        development firm that uses solid engineering,
        proactive communication, and modern development practices to make our
        customers really, really, happy.  SQLAlchemy is our preferred ORM for
        custom Python web application development.
</%self:user>

<%self:user
        name="newcars.com (part of cars.com)"
        logo="carscom.png"
        url="http://www.newcars.com"
        anchor="newcars.com">
        <a href="http://www.newcars.com">newcars.com</a> is a new member of the <a href="http://www.cars.com">cars.com</a>
        family, allowing cars.com visitors to shop for new cars, in addition to the site's original focus on used cars.
        Written in Python using the Pyramid web framework, newcars.com is built entirely around the
        SQLAlchemy ORM.
</%self:user>

<%self:user
        name="Dropbox"
        logo="dropbox.png"
        url="http://www.dropbox.com"
        anchor="dropbox.com">
        <a href="http://www.dropbox.com">dropbox.com</a> is the widely successful file sharing platform.
        Dropbox were early adopters of SQLAlchemy.  Today, they successfully scale out to over
        50,000,000 users using a custom-built SQLAlchemy Core approach on top of MySQL.
</%self:user>

<%self:user
        name="Hulu",
        logo="hulu.png"
        url="http://www.hulu.com/"
        anchor="hulu">
        <a href="http://www.hulu.com/">Hulu</a> is a well known, large scale online TV and
        movie streaming service.   Hulu makes
        extensive use of Python in many of their backend services, including use of SQLAlchemy.
        As detailed in their blog post <a href="http://tech.hulu.com/blog/2012/01/03/hostess-menu-system/">Hostess
        Menu System</a>, SQLAlchemy is at the core of Hulu's UX management
        system which serves data-driven views, filters and UI layouts to client applications running
        on a wide variety of devices.
</%self:user>

<%self:user
        name="Yelp",
        logo="yelp.png"
        url="http://www.yelp.com/"
        anchor="yelp">
        <a href="http://www.yelp.com/">Yelp</a>
        is the fun and easy way to find and talk about great (and not so great) local businesses.
        An early adopter of SQLAlchemy, Yelp started out with a core-only approach as early as version
        0.4, later migrating to an ORM approach on version 0.7 and forward.
</%self:user>

<%self:user
        name="Anomaly"
        logo="anomaly.png"
        url="https://anomaly.net.au/"
        anchor="anomaly">
        <a href="https://anomaly.net.au/">Anomaly</a> are
        "purveyors of finely-crafted code and pixels for the Web and iOS."
        where SQLAlchemy and Alembic is "part of our daily lives".
        Anomaly is a valued sponsor of SQLAlchemy.

</%self:user>

<%self:user
        name="SurveyMonkey",
        logo="surveymonkey.png"
        url="http://www.surveymonkey.com/"
        anchor="surveymonkey">
        <a href="http://www.surveymonkey.com/">SurveyMonkey</a>,
        the leader in online surveys, is building its entire stack in Python.
        SurveyMonkey is being built using Pylons/Pyramid, Jinja2 templating and
        a backend data tier built entirely upon SQLAlchemy.
</%self:user>

<%self:user
        name="Fedora Project",
        logo="fedora-logo.png"
        url="http://fedoraproject.org"
        anchor="fedoraproject">
        <a href="http://fedoraproject.org">Fedora</a> is one of the most widely used Linux distributions.
        According to their developers:
        "SQLAlchemy powers much of Fedora's Infrastructure. We pretty much worship it :)"
</%self:user>

<%self:user
        name="Firefox Sync"
        logo="firefox.png"
        url="http://www.firefox.com/"
        anchor="firefox">
        <a href="http://www.firefox.com/sync">Firefox Sync</a> is Firefox's built in bookmark synchronization service.
        Core server elements of Firefox Sync are written in Python using SQLAlchemy for backend storage.
</%self:user>

<%self:user
    name="Morrisville State College",
    logo="morrisville.png",
    url="http://www.morrisville.edu",
    anchor="morrisville">
    <a href="http://www.morrisville.edu">Morrisville State College</a> is ideally located in the geographic center of New York State and offers over 75 different majors. The Web Team at Morrisville built a portable application for recruiters that uses Bottle, Jinja templates, and SQLAlchemy ORM with SQLite. The application allows recruiters to collect student information on the road without requiring an internet connection.
</%self:user>


<%self:user
    name="Six Feet Up",
    logo="sixfeetup.png",
    url="http://www.sixfeetup.com",
    anchor="sixfeetup">
    Founded in 1999, <a
    href="http://www.sixfeetup.com">Six Feet Up</a> is a
    privately-held woman-owned company that develops and
    hosts sophisticated web publishing and collaboration
    projects. We specialize in Python solutions and are a
    leading provider of Plone services. We leverage
    SQLAlchemy to power web activity reports and access
    object oriented data in an effortless fashion. Our
    clients include top universities, growing and
    distributed organizations, as well as Fortune 500
    companies.
</%self:user>


<%self:user
        name="FreshBooks",
        logo="freshbooks.png"
        url="http://www.freshbooks.com/"
        anchor="freshbooks">
        <a href="http://www.freshbooks.com/">Freshbooks</a>
        delivers fast and simple invoicing and time tracking services.  The data tier
        is built entirely upon SQLAlchemy.
</%self:user>

<%self:user
        name="Uber"
        logo="uber.png"
        url="http://www.uber.com"
        anchor="uber">
        The <a href="http://www.uber.com">Uber</a> engineering team is the creator, operator, and guardian of a global platform for finding on-demand transportation that operates 24x7. We use SQLAlchemy in every service we develop. We even migrated our entire database to PostgreSQL from MySQL - and it was thanks to SQLAlchemy and Alembic that made that process possible.
</%self:user>

<%self:user
        name="Tablet"
        logo="tablet.png"
        url="http://www.tablethotels.com/"
        anchor="tablet"
        >
        <a href="http://www.tablethotels.com/">Tablet</a>
        does the hard work of selecting only the most extraordinary
        hotels and making booking as painless as it can be, having
        been founded as a cure for boring travel and an antidote to
        to the internet's overdose of options.
        Most of Tablet's codebase is written in Python, interacting
        with a MySQL backend using both the Core and ORM components of
        SQLAlchemy.

</%self:user>

<%self:user
        name="Thumbtack"
        logo="thumbtack.png"
        url="http://www.thumbtack.com/"
        anchor="thumbtack">
        <a href="http://www.thumbtack.com/">Thumbtack</a> gives you the ability to vet, contact and book service professionals online.
        SQLAlchemy is used throughout their backend data services, including their customer recommendation engine.  Per Thumbtack's
        director of engineering, "Needless to say we can deploy updates and improvements to our internal tools much
        faster because SQLAlchemy saves us so much time!"
</%self:user>


<%self:user
        name="PayLogic"
        logo="paylogic.png"
        url="http://paylogic.eu/"
        anchor="paylogic">
        <a href="http://paylogic.eu/">Paylogic</a> is the fastest growing European online ticketing company. It's powered by SQLAlchemy, Django, Tornado, Flask and Backbone.
</%self:user>


<%self:user
        name="Tropofy"
        logo="tropofy.png"
        url="http://www.tropofy.com"
        anchor="tropofy">
    <a href="http://www.tropofy.com">Tropofy</a> is an innovative web deployment platform for problem solvers, allowing
    the deployment of apps to the cloud without the need for a web development background. Tropofy is powered by Pyramid, SQLAlchemy and Knockoutjs.
</%self:user>

<%self:user
    name="RedRoute"
    logo="redroute.png"
    url="http://redroute.co"
    anchor="redroute">

    <a href="http://redroute.co">RedRoute</a> is a cab dispatching iPhone (and soon, Android) application serving the area around Cornell University in Ithaca, NY.  RedRoute has a backend that's entirely managed by SQLAlchemy; the system was developed over a 6-week period and SQLAlchemy greatly reduced development time over the alternatives considered.
</%self:user>


<%self:user
        name="Galaxy Project"
        logo="galaxyproject.png"
        url="http://galaxyproject.org/"
        anchor="galaxyproject">
        <a href="http://galaxyproject.org/">Galaxy Project</a> is an open source, web-based platform for data intensive biomedical research. Mostly written in Python and using SQLAlchemy on PostgreSQL/SQLite.
</%self:user>


<%self:user
        name="FastMonkeys"
        logo="fastmonkeys.png"
        url="http://www.fastmonkeys.com/"
        anchor="fastmonkeys">
        <a href="http://www.fastmonkeys.com/">Fast Monkeys</a> is a product development house based in Finland. We develop new web ventures using Python, Flask and SQLAlchemy.
</%self:user>


<%self:user
    name="MixRank"
    logo="mixrank.png"
    url="http://mixrank.com/"
    anchor="mixrank"
>
<a href="http://mixrank.com/">MixRank</a> is a competitive intelligence service for online advertising. SQLAlchemy is used to process and persist billions of data points.

</%self:user>


<%self:user
    name="Blocksworld"
    logo="blocksworld.png"
    url="http://blocksworld.com/"
    anchor="blocksworld"
>
<a href="http://blocksworld.com/">Blocksworld</a> is an iPad game in which players use cubes, wedges, rockets, wheels, motors and more to easily create 3D models of anything they can imagine - from race cars to animals to robots and more.   SQLAlchemy is used for the application server portion, which
also makes use of Flask, MySQL, and Redis.
</%self:user>


<%self:user
    name="LinOTP",
    logo="linotp.png",
    url="http://www.linotp.org",
    anchor="linotp"
    >
    <a href="http://www.linotp.org">LSE LinOTP</a> is a flexible and versatile OTP-platform for strong user
authentication.  Leveraging a modular architecture, it supports a
variety of authentication protocols, as well as token and user
repository features, while still remaining vendor-independent at its
core.  LinOTP features user friendly installation and usage, simple
scalability and multi tenancy.   LinOTP's approach is backed by
relational databases accessed via SQLAlchemy.

</%self:user>

<%self:user
        name="PwnedList"
        logo="pwnedlist.png"
        url="http://pwnedlist.com/"
        anchor="pwnedlist">
        <a href="http://pwnedlist.com/">PwnedList</a> is a new breed of a security company that focuses on proactively monitoring external threats, such as hackers, their intricate social networks and the data they share amongst each other.  Our platform is powered by Pyramid, Mako templates, SQLAlchemy and Amazon RDS.
</%self:user>


<%self:user
    name="Intuitive Web Solutions",
    logo="iws.png",
    url="http://www.britecore.com/",
    anchor="iws"
    >
    <a href="http://www.britecore.com/">Intuitive Web Solutions</a>
    is the creator of <strong>BriteCore</strong> - a comprehensive insurance processing system
    that empowers clients to efficiently manage the daily operations of their
    insurance company. We use SQLAlchemy to manage our data - from policies to
    the lines of business they are built on.
</%self:user>

<%self:user
    name="Beautylish",
    logo="beautylish.jpg"
    url="http://www.beautylish.com"
    anchor="beautylish"
>
<a href="http://www.beautylish.com">Beautylish</a> is a dynamic online beauty
resource featuring product reviews, video tutorials, tips and tricks, and
more. Beautylish is built using Pylons and SQLAlchemy on top of a complete
Amazon Web Services stack. Beauty is serious business ;)
</%self:user>


<%self:user
        name="Lex Machina",
        logo="lexmachina.jpg"
        url="https://lexmachina.com/"
        anchor="lexmachina">
        <a href="https://lexmachina.com/">Lex Machina</a> began as a joint
        project between Stanford Law School and the Stanford Computer Science
        Department seeking to address the dearth of reliable data on IP
        litigation. Now a private venture, Lex Machina uses the SQLAlchemy ORM
        extensively as the gateway to their legal database.
</%self:user>

<%self:user
        name="Seagate",
        logo="seagate.png",
        url="http://seagate.com",
        anchor="seagate">
    <a href="http://seagate.com">Seagate</a> is the famous maker of hard drives
    and storage devices.   Seagate uses Python with SQLAlchemy for a variety of
    internal applications.
</%self:user>



<%self:user
    name="Juju",
    logo="juju.gif",
    url="http://www.juju.com/",
    anchor="juju">
    <a href="http://www.job-search-engine.com/">Juju</a> is a job search engine that indexes job
    listings from companies and job boards all over the web and makes them
    searchable.
</%self:user>

<%self:user
    name="RedTurtle",
    logo="redturtle.png",
    url="http://www.redturtle.it",
    anchor="redturtle">
    <a href="http://www.redturtle.it">RedTurtle Technology</a> is an internet consultancy in Italy specializing in
    Pyramid / Plone solutions, using SQLAlchemy in most of their Python projects.
</%self:user>

<%self:user
    name="Amyris",
    logo="amyris.png",
    url="http://www.amyris.com",
    anchor="amyris">
    <a href="http://www.amyris.com">Amyris</a> is applying an industrial synthetic biology platform to provide
high-performing alternatives to petroleum-sourced fuels and chemicals:
"We use sqlalchemy heavily at Amyris and it is a thing of beauty :)"
</%self:user>

<%self:user
        name="CleverTim"
        logo="clevertim.png"
        url="http://clevertim.com/"
        anchor="clevertim">
        <a href="http://clevertim.com/">CleverTim</a> provides a simple CRM solution
        with a variety of features for small business use.  SQLAlchemy is used heavily
        at the core of their platform.
</%self:user>

<%self:user
    name="privacyIDEA",
    logo="privacyidea.png",
    url="http://privacyidea.org/",
    anchor="privacyidea"
    >
    <a href="http://privacyidea.org/">privacyIDEA</a>
    is a modular solution for two factor authentication,
    especially with OTP tokens.  Adding token types is as easy
    as writing a short Python module, leveraging its ability to
    consume existing LDAP, Active Directory, SQL, SCIM or flat file services.
    privacyIDEA uses the flexibility of SQLAlchemy to access the token store
    across a wide variety of SQL databases.

</%self:user>


<%self:user
        name="Adroll",
        logo="adroll.png"
        url="http://www.adroll.com">
    <a href="http://www.adroll.com">Adroll.com</a> lets online publishers connect and roll up their ad space to form relevant packages of inventory that advertisers can buy.
    Adroll's platform is built on Pylons using SQLAlchemy with PostgreSQL for data storage.
</%self:user>

<%self:user
        name="Charlie Rose",
        logo="charlierose.png"
        url="http://www.charlierose.com/">
<a href="http://www.charlierose.com/">Charlie Rose</a> is the widely viewed PBS show.  Their website offers a full episode and clip archive, on a site built with Pylons and SQLAlchemy.
</%self:user>

<%self:user
        name="Jim Henson's CreatureShop",
        logo="creatureshop.jpg"
        url="http://www.creatureshop.com/">
        One of several high profile animation studios which use SQLAlchemy, <a href="http://www.creatureshop.com/">Jim Henson's Creature Shop</a>
         uses SQLAlchemy internally for asset tracking and within the backend for its render farm.
</%self:user>

<%self:user
        name="alaTest",
        logo="alatest.jpg"
        url="http://alatest.com/">
        <a href="http://alatest.com/">alaTest</a> collects reviews from consumers and experts to help you find the best products on the market.
        SQLAlchemy is used heavily for our datamining and matching technology.
</%self:user>

<%self:user
        name="Checkout",
        logo="checkout.gif"
        url="http://www.checkoutapp.com/">
    <a href="http://www.checkoutapp.com/">Checkout</a> is a desktop
    software application for Mac OSX which turns any Mac into a cash register
    and real-time accounting system.   SQLAlchemy is bundled into the executable
    along with SQLite to implement its storage system.
</%self:user>

<%self:user
        name="The Carbon Account",
        logo="carbon_account.gif"
        url="http://www.thecarbonaccount.com/">
    <a href="http://www.thecarbonaccount.com/">The Carbon Account</a> helps
    you reduce your carbon footprint and share tips with friends. The site is
    built using a combination of Django and SQLAlchemy against a PostgreSQL
    database.
</%self:user>

<%self:user
        name="Codepad",
        logo="codepad.png"
        url="http://www.codepad.org/">
        <a href="http://www.codepad.org/">CodePad.org</a>
        is an online compiler/interpreter, and a simple collaboration tool,
        written by Steven Hazel, founder of <a href="http://saucelabs.com">Sauce Labs.</a>
        The web site is written in Python, using Pylons and SQLAlchemy.
</%self:user>

<%self:user
        name="SiaFoo",
        logo="siafoo.png"
        url="http://www.siafoo.net/">
        <a href="http://www.siafoo.net/">SiaFoo</a> is a site for storing code
        snippets and programming knowledge. It uses Pylons, SQLAlchemy and
        PostgreSQL.
</%self:user>

<%self:user
        name="MediaCore",
        logo="mediacore.png"
        url="http://mediacore.com/">
        <a href="http://mediacore.com">MediaCore</a> is a media content system
        allowing any website to add high quality media delivery. Uses
        SQLAlchemy to manage content.
</%self:user>

<%self:user
        name="TriMet",
        logo="trimet.png"
        url="http://trimet.org/">
        TriMet provides bus, light rail and commuter rail service in the Portland, Oregon metro area.
        Pylons and SQLAlchemy are used as the basis for a set of internal GIS/mapping apps, as well as other
        applications.
</%self:user>

<%self:user
        name="mapWOC",
        logo="mapwoc.png"
        url="http://mapwoc.org/">
        <a href="http://mapwoc.org/">mapWOC</a> lets you verify the integrity of websites, and identify malicious
        content by managing virtual machines with native browsers and
        analysing generated network traffic.  SQLAlchemy ORM is used throughout
        for data management.
</%self:user>

<%self:user
        name="Mydeco",
        logo="mydeco.png"
        url="http://mydeco.com/">
        <a href="http://mydeco.com/">Mydeco</a> is a home furnishings and interior design site, built on SQLAlchemy for database access.
</%self:user>

<%self:user
        name="screenshots.debian.net",
        logo="screenshots.debian.png"
        url="http://screenshots.debian.net/">
        A repository of Debian screenshots.  Builds on SQLAlchemy and PostgreSQL for data storage.
</%self:user>

<p>Want to be on this list? Let us know! Drop an email to mike(&amp;)zzzcomputing.com</p>
</dl>