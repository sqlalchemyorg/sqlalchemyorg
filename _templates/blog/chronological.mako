<%inherit file="site.mako" />

<div class="blog_nav d-flex border-bottom mb-1">
<%block name="prevnext">
    % if prev_link:
    <div class="prev">
     <a class="small-text" href="${prev_link}">« Previous Page</a>
    </div>
    % endif
    <span class="flex-grow-1"></span>
    % if next_link:
    <div class="next">
     <a class="small-text" href="${next_link}">Next Page »</a>
     </div>
    % endif
</%block>
</div>

% for post in posts:
  <%include file="post.mako" args="post=post" />
% endfor
<div class="blog_nav d-flex border-top mt-1">
${prevnext()}
</div>

