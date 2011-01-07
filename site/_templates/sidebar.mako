<%page args="section=None"/>
<%
    news = []
    self.include_file("/news_data.mako", container=news)
    max = 7
    count = 0
%>

<div id="sidebar">

<div class="box">
<h3>Current Release</h3>

<a href="/download.html"><b>0.6.5</b></a>
<br/>
<a href="/trac/wiki/06Migration">What's New?</a> | 
<a href="/changelog/CHANGES_0_6_5">Changelog</a> | 
<a href="/docs/06/">docs</a>
<br/>
Released October 24, 2010

</div>


<div class="box">
<p>SQLAlchemy is used by organizations such as:
<ul>
	<li><a href="http://reddit.com">reddit</a></li>
    <li><a href="http://public.web.cern.ch/public/en/lhc/lhc-en.html">CERN</a></li>
	<li><a href="http://www.lolapps.com">lolapps</a></li>
    <li><a href="http://www.freshbooks.com/">Freshbooks</a></li>
    <li><a href="http://fedoraproject.org/wiki/Infrastructure/Services">Fedora Project</a></li>
    <li><a href="http://www.creatureshop.com/">Jim Henson's Creature Shop</a></li>
    <li><a href="http://lexmachina.stanford.edu/">Lexmachina at Stanford University</a></li>
</ul>
</p>
<a href="/trac/wiki/SAApps">more...</a>
</div>

<div class="box">
<p>The first of two SQLAlchemy books now available:</p>
<div style="text-align:center">
<a href="http://www.oreilly.com/catalog/9780596516147/"><img src="/img/essential_sqla.gif" border="none"/></a>
</div>
<p>Using the book with 0.5 or greater?  Please read the <a href="/trac/wiki/05Migration">0.5 Migration Guide</a> and if on 0.6 the <a href="/trac/wiki/06Migration">0.6 Migration Guide</a> for important notes regarding usage changes.</p>
</div>
<div class="box">
    <h3>Latest News</h3>
	<ul>
% for item in news:
<%
	count += 1
	if count > max:
		break
%>
	<li><a href="/news.html#${item['id']}">${item['headline']}</a><br/><span class="date">${item['formatted_date']}</span>
% endfor
    </ul>
% if section != 'news':
<br/>
<a href="/news.html">More news...</a>
% endif
</div>

<div class="box donate">
<p>Donate to SQLAlchemy!</p> 

  <%include file="/paypal.mako"/>

<p>Proceeds are applied to
      project hosting costs and as 
      supplemental developer income.
</p>  
</div>


<%doc>
# no quicklinks for now
<div class="box">
  <h3>Quicklinks</h3>
  <ul>
  <li>Documentation: <a href="/docs/06/">0.6</a> | <a href="/docs/05/">0.5</a> | <a href="/docs/04/">0.4</a></li>
  <li>Changelog:<br/>
 <a href="/CHANGES">Latest Release</a> | <a href="/trac/browser/sqlalchemy/trunk/CHANGES">SVN Trunk</a></li>
  <li>Timelines:<br/>
  <a href="/trac/timeline">Project</a> | <a href="/trac/log/sqlalchemyorg/trunk">Website</li>
  <li><a href="http://groups.google.com/group/sqlalchemy">Mailing List</a></li>
  <li><a href="/trac/browser">Browse SVN</a></li>
  <li><a href="/download.html">Download</a></li>
  </ul>
</div>
</%doc>


</div> <!-- end #sidebar -->