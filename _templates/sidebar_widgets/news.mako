<h3>Latest News</h3>
<ul>
    % for post in bf.config.blog.posts[:5]:
        <li><a href="/blog/#${post.slug}">${post.title}</a>
        <br/><span class="date">${post.date.strftime("%a, %d %b %Y")}</span>
    % endfor

</ul>
% if section != 'news':
<a href="/blog/">More news...</a>
% endif
