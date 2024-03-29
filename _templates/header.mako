<%page args="site_base, docs_base, bb_base, current_release, section='home'"/>
<%namespace name="tools" file="/tools.mako"/>
<%
    def when_active(sec, text):
        if sec == section or (not isinstance(sec, str) and section in sec):
            return text
        else:
            return ''
%>

<nav class="navbar navbar-light logo">
    <div class="container-fluid">
        <a class="navbar-brand" href="${site_base}/">
            <img src="${site_base}/img/sqla_logo.png" width="240" alt="SQLAlchemy">
        </a>
        <div class="navbar-brand align-self-end dbtoolkit">
            <img src="${site_base}/img/dbtoolkit6.gif" width="180" height="12" alt="The Database Toolkit for Python">
        </div>
    </div>
</nav>
<nav class="navbar navbar-expand-md navbar-dark bg-sa-green py-0 navigation">
    <div class="container-fluid">
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavigation" aria-controls="navbarNavigation" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <span class="navbar-brand d-md-block d-md-none" href="#">The Database Toolkit for Python</span>
        <div class="collapse navbar-collapse" id="navbarNavigation">
            <ul class="navbar-nav me-auto">
                <li class="nav-item">
                    <a class="nav-link ${when_active('home', 'active')}" ${when_active('home', 'aria-current="page"')} href="${site_base}/">home</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle ${when_active('features', 'active')}" ${when_active('features', 'aria-current="page"')} href="#" id="feature-dropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        features
                    </a>
                    <ul class="dropdown-menu dropdown-menu-dark bg-sa-green" aria-labelledby="feature-dropdown">
                        <li><a class="dropdown-item" href="${site_base}/philosophy.html">Philosophy Statement</a></li>
                        <li><a class="dropdown-item" href="${site_base}/features.html">Feature Overview</a></li>
                        <li><a class="dropdown-item" href="${site_base}/quotes.html">Testimonials</a></li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link ${when_active('blog', 'active')}" ${when_active('blog', 'aria-current="page"')} href="${site_base}/blog/">news</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle ${when_active({'docs', 'library'}, 'active')}" ${when_active({'docs', 'library'}, 'aria-current="page"')}
                    href="#" id="docs-dropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        documentation
                    </a>
                    <ul class="dropdown-menu dropdown-menu-dark bg-sa-green" aria-labelledby="docs-dropdown">
                        <li><a class="dropdown-item" href="${docs_base}">Current Documentation (version ${current_release})</a></li>

                        <li><hr class="dropdown-divider"></li>
                        <li><a class="dropdown-item" href="${site_base}/library.html#reference">Documentation by Version</a></li>
                        ${tools.render_nav_docs_dropdown(docs_base)}
                        <li><hr class="dropdown-divider"></li>

                        <li><a class="dropdown-item" href="${site_base}/library.html#talks">Talks and Tutorials</a></li>
                        <li><a class="dropdown-item" href="${site_base}/library.html">Published content overview</a></li>
                    </ul>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle ${when_active('involved', 'active')}" ${when_active('involved', 'aria-current="page"')} href="#" id="community-dropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        community
                    </a>
                    <ul class="dropdown-menu dropdown-menu-dark bg-sa-green" aria-labelledby="community-dropdown">
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
                    <ul class="dropdown-menu dropdown-menu-dark bg-sa-green" aria-labelledby="download-dropdown">
                        <li><a class="dropdown-item" href="${site_base}/download.html">Download</a>
                        <%include file="download_links.mako" args="site_base=site_base, dropdown=True"/>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>
