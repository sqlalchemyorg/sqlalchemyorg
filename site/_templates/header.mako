<%page args="section='home'"/>
<%
    def active(sec):
        if sec==section:
            return ' class="active"'
        else:
            return ''
%>

<div id="header">
    <div id="logo"><a href="/"><img src="/img/sqla-logo6.gif" width="188" height="52" alt="SQLAlchemy" /></a></div>
    <div id="description"><img src="/img/dbtoolkit6.gif" width="180" height="12" alt="The Database Toolkit for Python" /></div>
</div>

<div id="nav">
    <ul>
        <li${active('home')}><a href="/">home</a></li>
        <li${active('features')}><a href="/features.html">features</a></li>
        <li${active('blog')}><a href="/blog/">blog</a></li>
        <li${active('docs')}><a href="/docs/">documentation</a>
            <ul>
                <li><a href="/docs/07/">Version 0.7</a></li>
                <li><a href="/docs/06/">Version 0.6</a></li>
                <li><a href="/docs/05/">Version 0.5</a></li>
            </ul>
        </li>
        <li${active('wiki')}><a href="/trac/">wiki</a>
            <ul>
                <li><a href="/trac/wiki/UsageRecipes">Recipes</a></li>
                <li><a href="/trac/wiki/FAQ">FAQ</a></li>
                <li><a href="/trac/roadmap">Roadmap</a></li>
                <li><a href="/trac/query?status=assigned&status=new&status=reopened&group=milestone&max=150&col=id&col=summary&col=status&col=type&col=priority&col=milestone&col=component&order=priority">Tickets by Milestone</a></li>
            </ul>
        </li>
        <li${active('involved')}><a href="/support.html">community</a>
            <ul>
                <li><a href="/support.html">Get Support</a></li>
                <li><a href="/participate.html">Participate</a></li>
                <li><a href="/develop.html">Develop</a></li>
            </ul>
        </li>
        <li${active('download')}><a href="/download.html">download</a></li>
    </ul>

</div>

<hr />

