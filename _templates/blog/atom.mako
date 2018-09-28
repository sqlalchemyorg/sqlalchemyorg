<?xml version="1.0" encoding="UTF-8"?><% from datetime import datetime %>
<feed
  xmlns="http://www.w3.org/2005/Atom"
  xmlns:thr="http://purl.org/syndication/thread/1.0"
  xml:lang="en"
   >
  <title type="text">${zf.config.blog.name}</title>
  <subtitle type="text">${zf.config.blog.description}</subtitle>

  <updated>${datetime.utcnow().strftime("%Y-%m-%dT%H:%M:%SZ")}</updated>
  <generator uri="http://blogofile.com/">Blogofile</generator>

  <link rel="alternate" type="text/html" href="${zf.config.blog.url}" />
  <id>${zf.config.blog.url}/feed/atom/</id>
  <link rel="self" type="application/atom+xml" href="${zf.config.blog.url}/feed/atom/" />
% for post in posts[:10]:
  <entry>
    <author>
      <name>${post.author}</name>
      <uri>${zf.config.blog.url}</uri>
    </author>
    <title type="html"><![CDATA[${post.title}]]></title>
    <link rel="alternate" type="text/html" href="${post.permalink}" />
    <id>${post.permalink}</id>
    <updated>${post.updated.strftime("%Y-%m-%dT%H:%M:%SZ")}</updated>
    <published>${post.date.strftime("%Y-%m-%dT%H:%M:%SZ")}</published>
% for category in post.categories:
    <category scheme="${zf.config.blog.url}" term="${category}" />
% endfor
    <summary type="html"><![CDATA[${post.title}]]></summary>
    <content type="html" xml:base="${post.permalink}"><![CDATA[${post.content}]]></content>
  </entry>
% endfor
</feed>
