<%flags>
	inherit='base.myc'
</%flags>
<%attr>
	section='news'
</%attr>
<%init>
	news = m.comp('/news_data.myc')
	max = 7
</%init>
<%args>
	all=0
</%args>
<%method title>
News - SQLAlchemy
</%method>


<h1>News</h1>
<div id="news">

<%python>
count = 0
</%python>

% for entry in news:
<%python>
	count += 1
	if not all and count>max:
		break
	elif all and count == max + 1:
		m.write("<a name='older'>")
</%python>
<div class="entry">
<h2><a name="<% entry['id'] %>"></a><a href="#<% entry['id'] %>"><% entry['headline'] %></a></h2>
<div class="date"><% entry['formatted_date'] %></div>
<% entry['body'] %>
</div>
%

% if not all:
<a href="news.myt?all=1#older"><b>View Older News</b></a>
%
</div>
