<%page args="section='home'"/>
<%
    def section_print(sec):
        if sec==section:
            return 'class="active"'
        else:
            return ''
%>

<div id="header">
    <div id="logo"><a href="/"><img src="/img/sqla-logo6.gif" width="188" height="52" alt="SQLAlchemy" /></a></div>
    <div id="description"><img src="/img/dbtoolkit6.gif" width="180" height="12" alt="The Database Toolkit for Python" /></div>
</div>

<div id="nav">
    <ul>
        <li><a ${ section_print('home') } href="/">home</a></li>
        <li><a ${ section_print('features') } href="/features.html">features</a></li>
        <li><a ${ section_print('news') } href="/news.html">news</a></li>
        <li><a ${ section_print('docs') } href="/docs/">documentation</a></li>
        <li><a ${ section_print('wiki') } href="/trac/">wiki</a></li>
        <li><a ${ section_print('community') } href="/community.html">community</a></li>
        <li><a ${ section_print('development') } href="/development.html">development</a></li>
        <li><a ${ section_print('download') } href="/download.html">download</a></li>
    </ul>

</div>

<hr />

