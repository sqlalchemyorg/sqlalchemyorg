<%page args="post"/>
<div class="blog_post card mb-1">
  <div class="card-body">
    <a name="${post.slug}"></a>
    <h5 class="card-title">${post.title}</h5>
    <h6 class="card-subtitle mb-2 text-muted">
      <span class="blog_post_date">${post.date.strftime("%B %d, %Y")}</span>
      <a class="card-link" href="${post.permapath()}" rel="bookmark" title="Permanent Link to ${post.title}">permalink</a>
      <div class="blog_post_byline">by ${post.author}</div>
    </h6>
    <p class="card-text border-top">${post.content}</p>
  </div>
</div>
