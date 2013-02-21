---
title: "Explaining Ladybug"
slug: "Tracing Code"
abbreviation: "explaining-ladybug"
publish: "yes"
category: assignment
layout: post
---

## Task

Describe, in detail, the execution of a program with specific attention to a global variable and timers.

## Objectives

1. Practice tracing the execution of event-based programs.
1. Explore how timers and other events effect the value of a global variable.
1. Write about the execution of non-linear programs.

## How to Read in {{site.short}}

The active reading response environment is temporarily suspended while it is under construction. In the meantime, a Word document (or PDF, if you're exporting from Google Docs, or .odt, if you're using Open Office) is just fine.

Make sure to include the name of the assignment, your name, email, and the date in the document you create.

## Reflection and Rumination

Here is a [snapshot of the Ladybug/Frog/Aphid game]({{site.images}}/ladybug-blocks.png). You want to download it so you can zoom in and out, we suspect.

We have two pieces of writing we would like you to do. Be thorough. Imagine this is practice for (similar) kinds of questions you might see on an exam. Further, imagine that by studying and explaining programs that it helps you become a better programmer. (That, actually, is true.)

The first piece of writing involves **tracing** the program, and the second involves exploring **program state**.

### Tracing

There is a timer event handler in this code; it is called **Clock1.Timer**. Whenever the timer goes off, this code is executed.

Explain what happens every time the timer goes off. Trace it out, over several paragraphs (it may take a page or two, to do this completely). Some questions to consider:

* What procedures are called? What do they do? 
* Is it possible for the game to end as part of the handling of the timer?
* Does it matter whether we update the ladybug or the aphid first?
* Did Matt leave anything critical out of the timer handler (from the perspective of someone trying to play this game)?

Be thorough; your goal is to convince yourself you understand what is going on when the timer goes off.

### Handling State

We refer to the values stored in a program as the *state* of the program. When we use the word "state" in this way, it is like saying "The *state* of Matt's office is that it is a disaster zone, and no one should be allowed to enter without proper safety equipment."

There is a lot of state in this program: the positions of the ladybug, aphid, and [f](http://www.youtube.com/watch?v=AYVQ7pyhAVo)rog, their heading, and rotation. However, we would like you to focus your second piece of writing on just one: the global variable called **energy**. 

Explain what happens to this variable throughout the life of the program. By this, we really mean "what events happen that cause this variable to change, by how much, and why?" As part of your exploration, describe both the most common case (a mix of events) as well as one or two uncommon even patterns (eg. the case where only the timer event happens, over and over, or where you never, ever get hit by the frog). 

## Submission

**Naming Convention**: *username*-{{page.abbreviation}}.docx

**Assignment**: {{page.title}}

{{site.moodle.link}}

{% include individual-submission-short.md %}

