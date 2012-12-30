---
title: Home
layout: default
---

{% for post in site.posts %}
  {% capture assignment_date %} {{ post.date | date: "%Y-%m-%d" }} {% endcapture %}
  {% capture subtraction %} {{ post.date | date: "%Y%m%d" | minus: site.upto }} {% endcapture %}
  {% if subtraction contains "-" %}
    {% if post.category contains 'week' %}
  
    {% capture anchor %} {{post.title | downcase | replace: ' ', '-'}} {% endcapture %}
<h1 id="{{anchor | remove: ' '}}">{{post.title}}</h1>
<p>{{post.slug}}</p>
{{ post.content }}

    {% endif %}
  {% endif %}
{% endfor %}

{% comment %}
<!-- THIS IS NOT HERE -->
{% for post in site.posts %}
  {% if post.category contains 'week' %}
  <h1 id="{{post.url}}">{{post.title}}</h1>
  <p>{{post.slug}}</p>
  {{ post.content }}
  {% endif %}
{% endfor %}
{% endcomment %}
