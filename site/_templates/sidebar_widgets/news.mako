<h3>Latest News</h3>
<ul>
    % for post in bf.config.blog.posts[:5]:
        <li><a href="${post.permapath()}" rel="bookmark" title="Permanent Link to ${post.title}">${post.title}</a>
        <br/><span class="date">${post.date.strftime("%a, %d %b %Y")}</span>
    % endfor

</ul>
% if section != 'news':
<br/>
<a href="/blog/">More news...</a>
% endif
