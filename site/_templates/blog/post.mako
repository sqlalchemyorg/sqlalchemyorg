<%page args="post"/>
<div class="blog_post">
  <div class="blog_post_header">
  <a name="${post.slug}"></a>
  <h2 class="blog_post_title"><a href="${post.permapath()}" rel="bookmark" title="Permanent Link to ${post.title}">${post.title}</a></h2>
  <div class="blog_post_date">${post.date.strftime("%B %d, %Y at %I:%M %p")}</div>
  </div>
  <div class="post_prose">
    ${post.content}
  </div>
</div>




