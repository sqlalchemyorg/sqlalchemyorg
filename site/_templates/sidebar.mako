<%page args="section=None"/>

<div id="sidebar">

<div class="box">
<h3>Current Release</h3>

<a href="/download.html"><b>0.6.6</b></a>
<br/>
<a href="/trac/wiki/06Migration">What's New?</a> | 
<a href="/changelog/CHANGES_0_6_6">Changelog</a> | 
<a href="/docs/06/">docs</a>
<br/>
Released January 8, 2011

</div>


<div class="box">
<p>SQLAlchemy is used by organizations such as:
<ul>
    <li><a href="http://reddit.com">reddit</a></li>
    <li><a href="http://www.openstack.org/">The OpenStack Project</a></li>
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
<p>Using the book with 0.5 or greater? Please read the <a
href="/trac/wiki/05Migration">0.5 Migration Guide</a> and if on 0.6 the <a
href="/trac/wiki/06Migration">0.6 Migration Guide</a> for important notes
regarding usage changes.</p>
</div>
<div class="box">
    <h3>Latest News</h3>
    <ul>
    <%include file="/news_data.mako" args="parent=self,max=4"/>
    </ul>
% if section != 'news':
<br/>
<a href="/news.html">More news...</a>
% endif
</div>

<div class="box donate">
<p>Donate to SQLAlchemy!</p> 

<%def name="newsitem(headline, date, formatted_date, body, id)">
	<li><a href="/news.html#${id}">${headline}</a><br/><span class="date">${formatted_date}</span>
</%def>

  <%include file="/paypal.mako"/>

<p>Proceeds are applied to
      project hosting costs and as 
      supplemental developer income.
</p> 
</div>



</div> <!-- end #sidebar -->
