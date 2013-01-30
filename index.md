---
title: Home
layout: default
---

# At a Glance

{% assign hstyle = "style='border-bottom: 0px; padding-bottom: 0px;'" %}

<table>
  <tr>
    <td><h2 {{hstyle}}>Date</h2></td>
    <td><h2 {{hstyle}}>Day</h2></td>
    <td><h2 {{hstyle}}>In Class</h2></td>
    <td><h2 {{hstyle}}>Due</h2></td>
  </tr>

{% assign foundOne = false %}
  
{% for post in site.posts %}

{% if post.category contains "day" %}

{% assign inClassCell = "" %}

{% for onday in site.posts %}
  {% if onday.title != "" and onday.date == post.date and onday.category contains "day" %}
    {% assign foundOne = true %}
    {% capture inClassCell %}
    {% if inClassCell == "" and onday.publish contains "yes" %}
        <a href="{{site.base}}{{onday.url}}">{{onday.title}}</a>
    {% elsif inClassCell == "" and onday.publish contains "no" %}
        {{onday.title}}
    {% else %}
      {{inClassCell}}<br/>
      <a href="{{site.base}}{{onday.url}}">{{onday.title}}</a>
    {% endif %}
    {% endcapture %}
  {% endif %}
{% endfor %}

{% assign dueTodayCell = "" %}

{% for dueday in site.posts %}
  {% if dueday.category contains "assignment" and dueday.date == post.date and dueday.publish contains "yes" %}
    {% assign foundOne = true %}
    {% capture dueTodayCell %}
    {% if dueTodayCell == "" %}
      <a href="{{site.base}}{{dueday.url}}">{{dueday.title}}</a>
    {% else %}
      {{dueTodayCell}}<br/>
      <a href="{{site.base}}{{dueday.url}}">{{dueday.title}}</a>
    {% endif %}
    {% endcapture %}
  {% endif %}
{% endfor %}

{% for onday in site.posts %}
  {% if onday.category contains "day" onday.publish contains "yes" %}
    {% assign foundOne = true %}
  {% endif %}
{% endfor %}

{% if post.publish contains "yes" or inClassCell != "" or dueTodayCell != "" or foundOne == true %}
{% capture postDate %}
{{post.date | date: "%b %d"}}
{% endcapture %}

<tr>
  <td>{{postDate}}</td>
  <td>{{post.date | date: "%a"}}</td>
  <td>{{inClassCell}}</td>
  <td>{{dueTodayCell}}</td>
</tr>
{% endif %}
    
{% endif %}
{% endfor %}
</table>

