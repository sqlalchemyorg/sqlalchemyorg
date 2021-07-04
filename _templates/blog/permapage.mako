<%inherit file="site.mako" />
<div class="blog_nav d-flex border-bottom mb-1">
<%block name="prevnext">
    % if prev_post:
    <div class="prev">
      <a class="small-text" href="${prev_post.permapath()}">« ${prev_post.title}</a>
    </div>
    % endif
    <span class="flex-grow-1"></span>
    % if next_post:
    <div class="next">
      <a class="small-text" href="${next_post.permapath()}">${next_post.title} »</a>
    </div>
    % endif
</%block>
    &nbsp;
</div>

<%include file="post.mako" args="post=post" />
<div id="disqus_thread"></div>
<script type="text/javascript">
  var disqus_url = "${post.permalink}";
</script>
% if zf.config.blog.disqus.enabled:
<script type="text/javascript" src="http://disqus.com/forums/${zf.config.blog.disqus.name}/embed.js"></script>
<noscript><a href="http://${zf.config.blog.disqus.name}.disqus.com/?url=ref">View the discussion thread.</a></noscript><a href="http://disqus.com" class="dsq-brlink">blog comments powered by <span class="logo-disqus">Disqus</span></a>
% endif
