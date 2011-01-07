<%inherit file="/base.mako"/>
<%page args="all=False"/>
<%!
    section = 'news'
%>


<%def name="title()">
News - SQLAlchemy
</%def>

<%def name="newsitem(headline, date, formatted_date, body, id)">
<div class="entry">
<h2><a name="${id}"></a><a href="#${id}">${headline}</a></h2>
<div class="date">${formatted_date}</div>
${body}
</div>
</%def>


<h1>News</h1>
<div id="news">

% if all:
    <%include file="/news_data.mako" args="parent=self"/>
% else:
    <%include file="/news_data.mako" args="parent=self,max=4"/>
%endif


% if not all:
<a href="allnews.html#older"><b>View Older News</b></a>
% endif
</div>
