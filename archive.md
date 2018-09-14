---
title: 存档
layout: page
---

<!-- Format your archive page -->
<!-- 总览Archive页的格式，一般情况下，你不需要修改这里的内容。 -->

<ul class="listing">
{% for post in site.posts %}
  {% capture y %}{{post.date | date:"%Y"}}{% endcapture %}
  {% if year != y %}
    {% assign year = y %}
    <li class="listing-seperator">{{ y }}</li>
  {% endif %}
  <li class="listing-item">
    <time datetime="{{ post.date | date:"%m-%d" }}" style="margin:0 .5em 0 0">{{ post.date | date:"%m-%d" }}  </time>
    <a href="{{ post.url }}" title="{{ post.title }}" target="_self" id="post-title">{{ post.title }}</a>
  </li>
{% endfor %}
</ul>
