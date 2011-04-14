<%page args="section=None"/>

<div id="sidebar">

<div class="box">
<h3>Current Release</h3>

<a href="/download.html"><b>0.7b3</b></a>
<br/>
<a href="/trac/wiki/07Migration">What's New?</a> | 
<a href="/changelog/CHANGES_0_7b3">Changelog</a> | 
<a href="/docs/07/">docs</a>
<br/>
Released March 20, 2011

<br/><br/>

<a href="/download.html"><b>0.6.7</b></a>
<br/>
<a href="/trac/wiki/06Migration">What's New?</a> | 
<a href="/changelog/CHANGES_0_6_7">Changelog</a> | 
<a href="/docs/06/">docs</a>
<br/>
Released April 13, 2011

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
<p>Have the O'Reilly book ?</p>
<div style="text-align:center">
<a href="http://www.oreilly.com/catalog/9780596516147/"><img src="/img/essential_sqla.gif" border="none"/></a>
</div>
<p>Please note it's largely out of date !   A new book 
    is in the works.  Check out the 
    <a href="/docs/">current documentation</a>,
    most importantly the <a href="/docs/orm/tutorial.html">ORM tutorial</a>,
    and read *each* of the following 
    migration guides for an update:
    <ul>
    <li><a href="/trac/wiki/05Migration">What's new in 0.5?</a></li>
    <li><a href="/trac/wiki/06Migration">What's new in 0.6?</a></li>
    <li><a href="/trac/wiki/07Migration">What's new in 0.7?</a></li>
    </ul>
</p>
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
