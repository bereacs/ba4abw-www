---
title: Assignments
layout: default
category: assignment
---

# Things To Do

<!-- http://fortawesome.github.com/Font-Awesome/#integration --> 

<table>
  <table>
  {% for post in site.posts %}
    {% capture assignment_date %} {{ post.date | date: "%Y-%m-%d" }} {% endcapture %}
    {% capture subtraction %} {{ post.date | date: "%Y%m%d" | minus: site.upto }} {% endcapture %}
    {% if subtraction contains "-" %}
      {% if post.category contains 'assignment' or post.category contains 'reading' or post.category contains 'lab' or post.category contains 'week' %}
      <tr>
        {% if post.category contains 'setup' %}
          <td width="2%"><i style="color: #666666;" class="icon-wrench icon-huge"></i></td>
        {% elsif post.category contains 'lab' %}
          <td width="2%"><i style="color: #666666;" class="icon-beaker icon-huge"></i></td>
        {% elsif post.category contains 'reading' %}
          <td width="2%"><i style="color: #666666;" class="icon-book icon-huge"></i></td>
        {% elsif post.category contains 'week' %}
          <td width="2%"><i style="color: {{site.highlight}};" class="icon-calendar icon-huge"></i></td>          
        {% else %}
          <td width = "2%"></td>
        {% endif %}
        <td width="38%"><a href="{{site.base}}{{post.url}}/">{{post.title}}</a></td>
        <td width="15%"><small>{{ assignment_date }}</small></td>
        <td width="45%"><small>{{post.slug}}</small></td>
      </tr>    
      {% endif %}
    {% endif %}
  {% endfor %}
  </table>


<!-- 
{% for post in site.posts %}
  {% if post.category contains 'assignment' %}
  <h2 id="{{post.url}}">{{post.title}}</h2>
  <p><strong>Due:</strong> {{post.date | date: "%a, %b %d" }}</p>
  <p>{{post.slug}}</p>
  <p><a href="{{site.base}}{{post.url}}/">Read More...</a></p>      
  {% endif %}
{% endfor %}
-->