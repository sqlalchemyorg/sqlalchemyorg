<%page args="post"/>
<div class="blog_post">
  <div class="blog_post_header">
  <a name="${post.slug}"></a>
  <h2 class="blog_post_title">${post.title}</h2>
  <div >
    <span class="blog_post_date">${post.date.strftime("%B %d, %Y")}</span>
    <a class='blog_post_permalink' href="${post.permapath()}" rel="bookmark" title="Permanent Link to ${post.title}">permalink</a>
    <div class="blog_post_byline">by ${post.author}</div>

  </div>
  </div>
  <div class="post_prose">
    ${post.content}
  </div>
</div>




