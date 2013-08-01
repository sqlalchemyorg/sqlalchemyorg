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
        name="Yelp",
        logo="yelp.png"
        url="http://www.yelp.com/"
        anchor="yelp">
        <a href="http://www.yelp.com/">Yelp</a>
        is the fun and easy way to find and talk about great (and not so great) local businesses.
        An early adopter of SQLAlchemy, Yelp started out with a core-only approach as early as version
        0.4, later migrating to an ORM approach now in production at version 0.7.
</%self:user>

<%self:user
        name="OpenStack",
        logo="openstack.png"
        url="http://www.openstack.com"
        anchor="openstack">
        <a href="http://www.openstack.com">OpenStack</a> is an IaaS cloud
        computing project by Rackspace Cloud and NASA joined by several
        companies such as Cloud.com, Citrix Systems, Dell, enStratus, NTT
        Data, PEER 1, RightScale, Cloudkick, Zenoss, Limelight, Scalr, AMD,
        Intel, and Spiceworks. OpenStack makes wide use of SQLAlchemy Core
        and ORM for integration with database storage.
</%self:user>

<%self:user
        name="Uber"
        logo="uber.png"
        url="http://www.uber.com"
        anchor="uber">
        The <a href="http://www.uber.com">Uber</a> engineering team is the creator, operator, and guardian of a global platform for finding on-demand transportation that operates 24x7. We use SQLAlchemy in every service we develop. We even migrated our entire database to PostgreSQL from MySQL - and it was thanks to SQLAlchemy and Alembic that made that process possible.
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
        name="PayLogic"
        logo="paylogic.png"
        url="http://paylogic.eu/"
        anchor="paylogic">
        <a href="http://paylogic.eu/">Paylogic</a> is the fastest growing European online ticketing company. It's powered by SQLAlchemy, Django, Tornado, Flask and Backbone.
</%self:user>

<%self:user
        name="PwnedList"
        logo="pwnedlist.png"
        url="http://pwnedlist.com/"
        anchor="pwnedlist">
        <a href="http://pwnedlist.com/">PwnedList</a> is a new breed of a security company that focuses on proactively monitoring external threats, such as hackers, their intricate social networks and the data they share amongst each other.  Our platform is powered by Pyramid, Mako templates, SQLAlchemy and Amazon RDS.
</%self:user>



<%self:user
        name="Firefox Sync"
        logo="firefox.png"
        url="http://www.firefox.com/sync"
        anchor="firefox">
        <a href="http://www.firefox.com/sync">Firefox Sync</a> is Firefox's built in bookmark synchronization service.
        Core server elements of Firefox Sync are written in Python using SQLAlchemy for backend storage.
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
    name="Coingig"
    logo="coingig.png"
    url="http://www.coingig.com/"
    anchor="coingig"
>
<a href="http://www.coingig.com">Coingig.com</a> is a marketplace platform for buyers and sellers to exchange products for Bitcoin. Coingig is built with Python and has recently implemented SQLAlchemy as our backbone database framework.
</%self:user>


<%self:user
    name="Urban Airship"
    logo="urban_airship.jpg"
    url="http://www.urbanairship.com"
    anchor="urbanairship"
>
    <a href="http://www.urbanairship.com">Urban Airship</a>
    is the engine behind thousands of the world’s most successful mobile apps,
    providing a full suite of messaging and content delivery tools, including
    Push Notifications, Rich Media Messaging, In-App Purchase and
    Subscriptions.

    SQLAlchemy ORM is at the core of their data access strategy which is currently
    based on a sharded Postgresql system.
</%self:user>

<%self:user
        name="LolApps"
        logo="lolapps.png"
        url="http://www.lolapps.com"
        anchor="lolapps">
        <a href="http://www.lolapps.com">LolApps</a> is one of the fastest growing social games companies.
        As presented in the Pycon 2010 talk <a href="http://us.pycon.org/2010/conference/schedule/event/135/">Scaling Python webapps from zero to 50 million users</a>,
        the SQLAlchemy ORM is at the core of their data access strategy.
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
        name="FreshBooks",
        logo="freshbooks.png"
        url="http://www.freshbooks.com/"
        anchor="freshbooks">
        <a href="http://www.freshbooks.com/">Freshbooks</a>
        delivers fast and simple invoicing and time tracking services.  The data tier
        is built entirely upon SQLAlchemy.
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
        name="SourceForge",
        logo="sourceforge.png"
        url="http://sourceforge.net"
        anchor="sourceforge">
        <a href="http://sourceforge.net">SourceForge's</a>
        all new infrastructure uses SQLAlchemy where relational databases
        are used.
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
    name="Juju",
    logo="juju.gif",
    url="http://www.job-search-engine.com/",
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
        name="Powered By Tippr"
        logo="poweredbytippr.gif"
        url="http://www.poweredbytippr.com/"
        anchor="poweredbytippr">
        <a href="http://www.poweredbytippr.com/">Powered By Tippr</a> enables publishers to run group buying
        promotions on their websites, rewarding their loyal readers, attracting new audience
        groups and unlocking a new revenue stream through improved ad revenue.
        Powered By Tippr uses SQLAlchemy for their analysis and reporting tools.
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
        name="Naumen"
        logo="naumen.gif"
        url="http://naumen.com/"
        anchor="naumen">
        <a href="http://naumen.com/">Naumen</a>
        is a leading Russian developer of software solutions for businesses and public authorities.
        Areas of expertise include enterprise document management, call- and contact-centers, e-learning, CRM, Help Desk systems.
        SQLAlchemy is used extensively within the company's Call Center solution.
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
        name="Toolpart Team",
        logo="toolpart.jpg"
        url="http://toolpart.hu">
        <a href="http://toolpart.hu">Toolpart</a> offers custom business integration and Open ERP solutions.   SQLAlchemy is used for Python projects.
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
        name="Milo",
        logo="milo.png"
        url="http://milo.com">
        Real-Time Local Product Search. Uses Django as the framework but with
        SQLAlchemy dropped in as the ORM on the front-end (and exclusively on the back-end).
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
        name="gcollab",
        logo="gcollab.jpg"
        url="https://www.gcollab.com/">
Global collaborative internet services, built with SQLAlchemy.
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