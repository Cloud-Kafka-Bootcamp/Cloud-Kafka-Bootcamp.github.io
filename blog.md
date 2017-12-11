---
title: Blog
permalink: /blog/
---
<ul>
{% for post in site.posts %}
    <li>
        {% assign date_format = site.minima.date_format | default: "%b %-d, %Y" %}
        <span>
            <a href="{{ post.url | relative_url }}">{{ post.date | date: date_format }} - {{ post.title | escape }}</a>
        </span>
    </li>
{% endfor %}
</ul>