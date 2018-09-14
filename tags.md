---
title: 标签
layout: page
---

<!-- Format your tags page -->
<!-- 标签tags页的格式，一般情况下，你不需要修改这里的内容。 -->

<div id='tag_cloud'>
{% for tag in site.tags %}
<a href="#{{ tag[0] }}" title="{{ tag[0] }}" rel="{{ tag[1].size }}" target="_self">{{ tag[0] }}</a>
{% endfor %}
</div>

<ul class="listing">
{% for tag in site.tags %}
  <li class="listing-seperator" id="{{ tag[0] }}">{{ tag[0] }}</li>
{% for post in tag[1] %}
  <li class="listing-item">
  <time datetime="{{ post.date | date:"%m-%d" }}" style="margin:0 .5em 0 0">{{ post.date | date:"%m-%d" }}</time>
  <a href="{{ post.url }}" title="{{ post.title }}" target="_self">{{ post.title }}</a>
  </li>
{% endfor %}
{% endfor %}
</ul>

<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.1/jquery.min.js" type="text/javascript" charset="utf-8"></script>
<script src="/media/js/jquery.tagcloud.js" type="text/javascript" charset="utf-8"></script> 
<script language="javascript">
$.fn.tagcloud.defaults = {
    size: {start: 1, end: 1, unit: 'em'},
      color: {start: '#ccc', end: '#000000'}
};

$(function () {
    $('#tag_cloud a').tagcloud();
});
</script>
