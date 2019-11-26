<%page args="site_base, docs_base, bb_base, section='home'"/>
<%
    def active(sec):
        if sec==section:
            return ' class="active"'
        else:
            return ''
%>

<div id="header">
    <div id="logo"><a href="${site_base}/"><img src="${site_base}/img/sqla_logo.png" width="240" alt="SQLAlchemy" /></a></div>
    <div id="description"><img src="${site_base}/img/dbtoolkit6.gif" width="180" height="12" alt="The Database Toolkit for Python" /></div>
</div>

<div id="nav">

    <ul>
        <li${active('home')}><a href="${site_base}/">home</a></li>
        <li${active('features')}><a href="${site_base}/features.html">features</a>
            <ul>
                <li><a href="${site_base}/features.html">Feature Overview</a></li>
                <li><a href="${site_base}/quotes.html">Testimonials</a></li>
            </ul>
        </li>
        <li${active('blog')}><a href="${site_base}/blog/">blog</a></li>
        <li${active('docs')}><a href="${site_base}/library.html">library</a>
            <ul>
                <li><a href="${site_base}/library.html#reference">Reference</a>
                    <ul class="version-listing">
                        <li><a href="http://docs.sqlalchemy.org">Reference Documentation</a></li>
                    </ul>
                </li>
                <li><a href="${site_base}/library.html#architecture">Architecture</a></li>
                <li><a href="${site_base}/library.html#citations">Citing SQLAlchemy</a></li>
                <li><a href="${site_base}/library.html#blog">Blog Posts</a></li>
                <li><a href="${site_base}/library.html#talks">Talks</a></li>
                <li><a href="${site_base}/library.html#tutorials">Tutorials</a></li>
                <li><a href="${site_base}/library.html#recipes">Recipes</a></li>
            </ul>
        </li>
        <li${active('involved')}><a href="${site_base}/support.html">community</a>
            <ul>
                <li><a href="${site_base}/support.html">Get Support</a></li>
                <li><a href="${site_base}/participate.html">Participate</a></li>
                <li><a href="${site_base}/develop.html">Develop</a></li>
                <li><a href="${site_base}/codeofconduct.html">Code of Conduct</a></li>
                <li><a href="${bb_base}">Github</a></li>
            </ul>
        </li>
        <li${active('download')}><a href="${site_base}/download.html">download</a>
            <%include file="download_links.mako" args="site_base=site_base"/>
        </li>
    </ul>

</div>


