---
title: Home
layout: default
---

{% for post in site.posts %}
  {% if post.publish contains "yes" %}
    {% if post.category contains "week" %}

<h1 id="{{anchor | remove: ' '}}">{{post.title}}</h1>

    {% elsif  post.category contains 'day' %}
    
    {% capture anchor %}{{post.title | downcase | replace: ' ', '-'}}{% endcapture %}
    
    {% capture pgdate %}{{post.date | date: "%A, %b %d"}}{% endcapture %}
    
<h2 style="color: {{site.highlight}}" id="{{anchor | remove: ' '}}"> {{pgdate}}</h1>
<p>{{post.slug}}</p>
{{ post.content }}

<p style="margin:40px;"> &nbsp; </p>

    {% endif %}
  {% endif %}
{% endfor %}
