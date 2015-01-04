---
layout: default
---
<ul class="post-list">
  {% for post in site.posts %}
  <li>
    <date>{{ post.date | date: "%b %-d, %Y" }}</date>

    <h2>
      <a class="post-link" href="{{ post.url | prepend: site.baseurl }}">
        {{ post.title }}
      </a>
    </h2>

    {{ post.excerpt }}
  </li>
  {% endfor %}
</ul>
