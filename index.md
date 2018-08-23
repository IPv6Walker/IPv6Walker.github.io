---
layout: default
---

<div>
  {% for post in site.posts limit: 1 %}
  <article class="content">
    <section class="title">
      <h2><a href="{{ post.url }}" target="_self">{{ post.title }}</a></h2>
    </section>
    <section class="meta">
    <span class="time">
      <time datetime="{{ post.date }}">{{ post.date | date:"%Y-%m-%d" }}</time>
    </span>
    {% if page.author %} 
      <span style="color:#2bb6c9"> {{ page.author }} </span>
      {% else %} 
      <span style="color:#2bb6c9"> 原创 </span>
    {% endif %}
    {% if post.tags %}
    <span class="tags">
      {% for tag in post.tags %}
      <a href="/tags.html#{{ tag }}" title="{{ tag }}">#{{ tag }}</a>
      {% endfor %}
    </span>
    {% endif %}
    </section>
    <section class="post">
    {{ post.content }}
    </section>
    </article>
  {% endfor %}
  <div class="divider"></div>
  <ul class="listing main-listing">
    <li class="listing-seperator">Happened earlier this year</li>
  {% capture year %}{{ site.time | date:"%Y"}}{% endcapture %}
  {% for post in site.posts offset:1 %}
    {% capture y %}{{ post.date | date:"%Y"}}{% endcapture %}
    {% if year != y %}
    {% break %}
    {% endif %}
    <li class="listing-item">
      <time datetime="{{ post.date | date:"%Y-%m-%d" }}" style="margin:0 1em 0 0">{{ post.date | date:"%Y-%m-%d" }}</time>
      <a href="{{ post.url }}" title="{{ post.title }}" target="_self">{{ post.title }}</a>
    </li>
  {% endfor %}
    <li class="listing-seperator"><a href="/archive.html"  target="_self">Long long ago</a></li>
  </ul>
</div>