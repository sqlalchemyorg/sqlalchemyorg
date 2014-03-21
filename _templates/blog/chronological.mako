<%inherit file="site.mako" />

<div class="blog_nav">
<%block name="prevnext">
    % if prev_link:
    <div class="prev">
     <a href="${prev_link}">« Previous Page</a>
    </div>
    % endif
    % if next_link:
    <div class="next">
     <a href="${next_link}">Next Page »</a>
     </div>
    % endif
</%block>
    &nbsp;
</div>

% for post in posts:
  <%include file="post.mako" args="post=post" />
% endfor
${prevnext()}

