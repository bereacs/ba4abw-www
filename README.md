# Better Apps for a Better World WWW


This is the repository for the "Better Apps" course offered at Berea College.

# Using the Site

The site is a Jekyll-generated static site. This means that you must have Jekyll installed, and how you manage that is up to you and Google.

## _config.yml

The first thing you should edit if forking for a new site is the configuration file.

* File paths need to be updated.
* Color scheme information set.
* Professor information (phone, etc.) should be modified
* Course name, number

## Authoring Weekly Overviews

All weekly overviews are in the "_posts" directory. Jekyll thinks it is a blogging engine, and we're leveraging that fact, because we "post" something every week... specifically, what comes next week. 

So, each week should be a file in the "_posts" directory named

2013-01-07-01.md

or similar. The critical part is the **YYYY-MM-DD-** part of the filename: Jekyll looks for that date, and decides that is when the "blog post" should be published. We filter on dates (see "Rendering the Site"), so the date should always be the first Monday of the week -- even if it is a T/R class. (In the future, it might be that the Sunday is a better choice...)

The name of the week is also important: we assume each week is named **-nn** for purposes of linking. These will end up at 

http://course-root.org/week/nn/

which is a nice, pretty URL, and easily guessable by a busy professor at the front of the room.

The top of each page (which is [auto-generated](https://github.com/bereacs/create-course-weeks)) should look like

~~~~~~~~
---
title: Week 1 
week: 1
category: week
layout: post
---
~~~~~~~~

and, really, nothing should have to be done to the "YAML" block at the top. (YAML stands for "Yet Another Markup Language.")


## Rendering the Site

When rendering, it is important to first set the "upto" configuration variable in the configuration. It is of the form

YYYYMMDD

and is treated as an integer for date calculations. This is used for deciding how much of the course website to reveal/render. So, for example, if you wanted to show everything up through January 31st, 2013, you should set the date to

20130201

Technically, you could also do

20130132

which is a nonsense date, but it is greater than everything in January, and less than anything in February... because we're using the date as an integer in this particular context, not an actual date. If Liquid templates ever become more functional, this could change.

### What This Affects

This will change how the front page is rendered, as well as the "To Do" page. Resources are unaffected by this parameter.

## Testing Your Changes

Do a "make test" to see the site live on your local machine.

Read the Makefile to see what it does.

## Making the Site "Live"

We are not hosting the site on Github Pages, because we would need to play funny games with domain names in order to do so.

Instead, we are going to use a server of our own, and "rsync" the pages there.

When you render the site (by running the command "jekyll"), you get a site rendered in the "_site" directory. The contents of this directory should be SCP'd, rsync'd, or otherwise copied to a remote server. If you have your paths set up correctly in the _config.yml file, then everything will "just work" on the remote server.

Read the Makefile to see how it does this.

## Styling the Site

You can replace all of the stylesheets, and get a different look and feel. This is not a casual job.


# Offering History

* Spring 2013, first offering. <br/>
Taught by Matt Jadud and Jan Pearce.