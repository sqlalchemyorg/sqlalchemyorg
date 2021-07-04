<h3 class="card-title">Latest News</h3>

<ul class="m-0 p-0">
    % for post in zf.config.blog.posts[:5]:
        <li class="py-1">
            <a href="/blog/#${post.slug}">${post.title}</a>
            <br/>
            <span class="fst-italic text-muted">${post.date.strftime("%a, %d %b %Y")}</span>
        </li>
    % endfor
</ul>
% if section != 'news':
<a class="card-link" href="/blog/">More news...</a>
% endif
