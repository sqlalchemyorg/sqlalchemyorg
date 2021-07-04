<%page args="site_base, docs_base, bb_base, section='home'"/>
<%namespace name="tools" file="/tools.mako"/>
<%
    def when_active(sec, text):
        if sec==section:
            return text
        else:
            return ''
%>

<nav class="navbar navbar-light logo">
    <div class="container-fluid">
        <a class="navbar-brand" href="${site_base}/">
            <img src="${site_base}/img/sqla_logo.png" width="240" alt="SQLAlchemy">
        </a>
        <div class="navbar-brand align-self-end">
            <img src="${site_base}/img/dbtoolkit6.gif" width="180" height="12" alt="The Database Toolkit for Python">
        </div>
    </div>
</nav>
<nav class="navbar navbar-expand-md navbar-dark bg-sa-green py-0">
    <div class="container-fluid">
        <a class="navbar-brand d-none d-md-block d-lg-none" href="#">Menu</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavigation" aria-controls="navbarNavigation" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavigation">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link ${when_active('home', 'active')}" ${when_active('home', 'aria-current="page"')} href="${site_base}/">home</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle ${when_active('features', 'active')}" ${when_active('home', 'aria-current="page"')} href="#" id="feature-dropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        features
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="feature-dropdown">
                        <li><a class="dropdown-item" href="${site_base}/features.html">Feature Overview</a></li>
                        <li><a class="dropdown-item" href="${site_base}/quotes.html">Testimonials</a></li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link ${when_active('blog', 'active')}" ${when_active('blog', 'aria-current="page"')} href="${site_base}/blog/">blog</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle ${when_active('docs', 'active')}" ${when_active('docs', 'aria-current="page"')} href="#" id="docs-dropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        library
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="docs-dropdown">
                        <li><a class="dropdown-item" href="${site_base}/library.html#reference">Reference</a></li>
                        ${tools.version(site_base)}
                        <li><a class="dropdown-item" href="${site_base}/library.html#architecture">Architecture</a></li>
                        <li><a class="dropdown-item" href="${site_base}/library.html#citations">Citing SQLAlchemy</a></li>
                        <li><a class="dropdown-item" href="${site_base}/library.html#blog">Blog Posts</a></li>
                        <li><a class="dropdown-item" href="${site_base}/library.html#talks">Talks and Tutorials</a></li>
                        <li><a class="dropdown-item" href="${site_base}/library.html#recipes">Recipes</a></li>
                    </ul>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle ${when_active('involved', 'active')}" ${when_active('involved', 'aria-current="page"')} href="#" id="community-dropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        community
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="community-dropdown">
                        <li><a class="dropdown-item" href="${site_base}/support.html">Get Support</a></li>
                        <li><a class="dropdown-item" href="${site_base}/participate.html">Participate</a></li>
                        <li><a class="dropdown-item" href="${site_base}/develop.html">Develop</a></li>
                        <li><a class="dropdown-item" href="${site_base}/codeofconduct.html">Code of Conduct</a></li>
                        <li><a class="dropdown-item" href="${bb_base}">Github</a></li>
                    </ul>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle ${when_active('download', 'active')}" ${when_active('download', 'aria-current="page"')} href="#" id="download-dropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        download
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="download-dropdown">
                        <li><a class="dropdown-item" href="${site_base}/download.html">Download</a>
                        <%include file="download_links.mako" args="site_base=site_base, dropdown=True"/>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>
