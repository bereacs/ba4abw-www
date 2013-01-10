---
title: Assignments
layout: default
category: assignment
---

# Things To Do

<!-- http://fortawesome.github.com/Font-Awesome/#integration --> 


<table>
{% for post in site.posts %}
  {% if post.publish contains "yes" %}
  <tr>
    {% if post.category contains 'week' %}

    <td width="2%"> <i style="color: #333399;" class="icon-calendar icon-huge"> </i> </td> 
    <td width="38%"> End of {{post.title}} </td>
    <td width="45%"> <em> {{post.slug}} </em> </td>
    
    {% elsif  post.category contains 'day' %}
    
    {% capture anchor %} {{post.title | downcase | replace: ' ', '-'}} {% endcapture %}
    {% capture assignment_date %} {{ post.date | date: "%Y-%m-%d" }} {% endcapture %}
    {% capture pgdate %} {{post.date | date: "%A, %b %d"}} {% endcapture %}

    <td width="2%"> <i style="color: #333399;" class="icon-beaker "> </i> </td>     
    <td width="38%"> <a href="{{site.base}}{{post.url}}/">{{pgdate}}</a> </td>
    <td width="45%"> <small>{{post.title}}</small> </td>
      
    {% endif %}
  {% endif %}
</tr>
{% endfor %}
</table>


{% comment %}
<table>
  <tr bgcolor="#DDDDDD">
    <td></td>
    <td>Assign.</td>
    <td>Title</td>
    <td>Due</td>
    <td></td>
  </tr>
  {% for post in site.posts %}
    {% capture assignment_date %} {{ post.date | date: "%Y-%m-%d" }} {% endcapture %}
    {% capture subtraction %} {{ post.date | date: "%Y%m%d" | minus: site.upto }} {% endcapture %}
    {% if subtraction contains "-" %}
      {% if post.category contains 'week' %}
      <tr>
        {% if post.category contains 'setup' %}
          <td width="2%"><i style="color: #666666;" class="icon-wrench icon-huge"></i></td>
        {% elsif post.category contains 'lab' %}
          <td width="2%"><i style="color: #666666;" class="icon-beaker icon-huge"></i></td>
        {% elsif post.category contains 'reading' %}
          <td width="2%"><i style="color: #666666;" class="icon-book icon-huge"></i></td>
        {% elsif post.category contains 'week' %}
          <td width="2%"><i style="color: {{site.highlight}};" class="icon-calendar icon-huge"></i></td>          
        {% elsif post.category contains 'assignment' %}
          <td width="2%"><i style="color: #666666;" class="icon-edit icon-huge"></i></td>          
        {% else %}
          <td width = "2%"></td>
        {% endif %}
        <td>{{post.abbreviation}}</td>
        <td width="38%"><a href="{{site.base}}{{post.url}}/">{{post.title}}</a></td>
        <td width="15%"><small>{{ assignment_date }}</small></td>
        <td width="45%"><small>{{post.slug}}</small></td>
      </tr>    
      {% endif %}
    {% endif %}
  {% endfor %}
  </table>

{% endcomment %}
