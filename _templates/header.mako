<%page args="site_base, docs_base, bb_base, section='home'"/>
<%
    def active(sec):
        if sec==section:
            return ' class="active"'
        else:
            return ''
%>

<div id="header">
    <div id="logo"><a href="${site_base}/"><img src="${site_base}/img/sqla-logo6.gif" width="188" height="52" alt="SQLAlchemy" /></a></div>
    <div id="description"><img src="${site_base}/img/dbtoolkit6.gif" width="180" height="12" alt="The Database Toolkit for Python" /></div>
</div>

<div id="nav">

    <div id="gittip_nav">

        <script data-gittip-username="zzzeek"
        data-gittip-widget="button"
        src="//gttp.co/v1.js"></script>

    </div>
    <ul>
        <li${active('home')}><a href="${site_base}/">home</a></li>
        <li${active('features')}><a href="${site_base}/features.html">features</a>
            <ul>
                <li><a href="${site_base}/features.html">Feature Overview</a></li>
                <li><a href="${site_base}/organizations.html">Organizations</a></li>
                <li><a href="${site_base}/quotes.html">Testimonials</a></li>
            </ul>
        </li>
        <li${active('blog')}><a href="${site_base}/blog/">blog</a></li>
        <li${active('docs')}><a href="${docs_base}">documentation</a>
            <ul class="version-listing">
            </ul>
        </li>
        <li${active('wiki')}><a href="${bb_base}/wiki">wiki</a>
            <ul>
                <li><a href="${bb_base}/wiki/UsageRecipes">Recipes</a></li>
                <li><a href="${docs_base}/en/latest/faq.html">FAQ</a></li>
                <li><a href="${bb_base}/issues?status=new&status=open">Issues</a></li>
            </ul>
        </li>
        <li${active('involved')}><a href="${site_base}/support.html">community</a>
            <ul>
                <li><a href="${site_base}/support.html">Get Support</a></li>
                <li><a href="${site_base}/participate.html">Participate</a></li>
                <li><a href="${site_base}/develop.html">Develop</a></li>
            </ul>
        </li>
        <li${active('download')}><a href="${site_base}/download.html">download</a></li>
    </ul>

</div>


