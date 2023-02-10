<%inherit file="/base.mako"/>
<%!
    section = 'home'
%>

## b11

<h1>The Python SQL Toolkit and Object Relational Mapper</h1>

<p>SQLAlchemy is the Python SQL toolkit and Object Relational Mapper that
gives application developers the full power and flexibility of SQL.</p>
<p>It provides a full suite of well known enterprise-level persistence
patterns, designed for efficient and high-performing database access, adapted
into a simple and Pythonic domain language.</p>

<dl id="features" class="features">
    <dt>Documentation</dt>
    <dd>
        <ul>
            <li><a href="${self.attr.docs_base}"><strong>Current Documentation (version ${self.attr.current_release})</strong></a> - learn SQLAlchemy here
                <ul>
                    <li><a href="${self.attr.docs_base}">Documentation Overview</a></li>
                    <li><a href="${self.attr.docs_base}/intro.html#installation">Installation Guide</a></li>
                    <li><a href="${self.attr.docs_base}/orm/quickstart.html">ORM Quickstart</a></li>
                    <li><a href="${self.attr.docs_base}/tutorial/index.html">Comprehensive Tutorial</a></li>
                    <li><strong>Reference Guides</strong>
                        <ul>
                            <li><a href="${self.attr.docs_base}/orm/">Object Relational Mapping (ORM)</a></li>
                            <li><a href="${self.attr.docs_base}/core/">Core (Connections, Schema Management, SQL)</a></li>
                            <li><a href="${self.attr.docs_base}/dialects/">Dialects (specific backends)</a></li>
                        </ul>

                    </li>
                </ul>
            </li>
            <li><strong>Documentation by Version</strong>
                <ul class="version-listing">
                    <li><a href="${self.attr.docs_base}">Reference Documentation</a></li>
                </ul>

            </li>
        </ul>
    </dd>


    <dt>Learn More</dt>
    <dd>
        <ul>
            <li><strong>Front Matter</strong>

            <ul>
                <li><a href="/philosophy.html">SQLAlchemy's Philosophy</a></li>
                <li><a href="/features.html">Overview of Key Features</a></li>
                <li><a href="/quotes.html">Testimonials</a></li>
            </ul>

            </li>
            <li><a href="/library.html"><strong>Library</strong></a> - Articles and Talks
                <ul>
                <li><a href="/library.html#talks">Talks and Tutorials</a></li>
                <li><a href="/library.html#architecture">Architecture</a></li>
                </ul>
            </li>
        </ul>
    </dd>

    <dt>Resources</dt>
    <dd>
            <ul>
                <li><a href="/download.html">Release History / Download Information</a></li>
                <li><a href="/blog/">News and Announcements</a></li>
                <li><strong>Community</strong>
                    <ul>
                        <li><a href="/support.html">Getting Support</a></li>
                        <li><a href="/participate.html">Participate in the Project</a></li>
                        <li><a href="/develop.html">Get Involved with Development</a></li>
                        <li><a href="/codeofconduct.html">Code of Conduct</a></li>
                    </ul>
                </li>
            </ul>
        </ul>
    </dd>
</dl>






