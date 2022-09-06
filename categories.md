---
layout: default
title: Categories
permalink: /categories/
---


{% for tag in site.categories %}
  <h2 id="{{ tag[0] }}" style="border-bottom-style:dotted;">{{ tag[0] | capitalize }}</h2>

  <ul>
    {% assign pages_list = tag[1] %}
    {% for post in pages_list %}
      {% if post.title != null %}
      {% if group == null or group == post.group %}
      <li><a href="{{ site.baseurl }}{{ post.url }}">{{ post.title }} </a></li>
      {% endif %}
      {% endif %}
    {% endfor %}
    {% assign pages_list = nil %}
    {% assign group = nil %}
  </ul>
{% endfor %}