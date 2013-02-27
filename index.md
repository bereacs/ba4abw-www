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
    <td><h2 {{hstyle}}>Due</h2></td>
    <td><h2 {{hstyle}}>In Class</h2></td>
  </tr>

{% assign foundOne = false %}
  
{% for post in site.posts %}

{% if post.category contains "day" %}

{% assign inClassCell = "" %}

{% for onday in site.posts %}
  {% if onday.title != "" and onday.date == post.date and (onday.category contains "day" or onday.category contains "lab") %}
    {% assign foundOne = true %}
    {% capture inClassCell %}
    {% if inClassCell == "" and onday.publish contains "yes" %}
        <a href="{{site.base}}{{onday.url}}">{{onday.title}}</a>
    {% elsif inClassCell == "" and onday.publish contains "no" %}
        {{onday.title}}
    {% elsif onday.publish == "yes" %}
      {{inClassCell}}<br/>
      <a href="{{site.base}}{{onday.url}}">{{onday.title}}</a>
    {% elsif onday.publish == "no" %}
      {{inClassCell}}<br/>
      {{onday.title}}
    {% else %}
      {{inClassCell}}
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
{% capture rowid %}{{post.date | date: "%Y:%m:%d"}}{% endcapture %}

<tr id="{{rowid}}">
  <td>{{postDate}}</td>
  <td>{{post.date | date: "%a"}}</td>
  <td>{{dueTodayCell}}</td>
  <td>{{inClassCell}}</td>
</tr>
{% endif %}
    
{% endif %}
{% endfor %}
</table>


<!-- Highlight today and a few days ahead -->
<script type="text/javascript">
  var debug = false;
  var cd = new Date();
  
  for (i = 0; i < 6; i++) {
    
    var mo = (cd.getMonth()+1);
    if (mo < 10) { mo = "0" + mo; }
    day = cd.getDate();
    if (day < 10) { day = "0" + day; }
    
    var id  = cd.getFullYear() + ":" + mo + ":" + day;

    if (debug) { console.log(id); }
    
    if (document.getElementById(id)) {
      if (debug) { console.log("Setting: " + id); }
      
      document.getElementById(id).className = "currentDay";    
    }
    
    cd = new Date(cd.getTime() + (24 * 60 * 60 * 1000));
  }  
</script>
