---
title: "Exploring Timers"
slug: "tick tick tick"
abbreviation: "exploring-timers"
publish: "no"
category: lab
layout: post
---

This activity will be carried out **in class** on {% duein 0 %}.

## Task

Write a short program that modifies a global variable in response to a timer.

## Objectives

1. Practice working with timers.
1. Develop questions regarding the interactions of timers and program state.

## Create a Program Skeleton

Along with your partner, write a program. Then, answer some questions; answering those questions may require you to do a bit more exploration with your code.

### Create a Clock

In your layout, create a label and text box. For example, we called our text box "tbCounterValue." Then, add a Clock to the app. In the properrties for your Clock, change the TimeInterval to 1.

![]({{site.images}}/timer-exploration-00.png)

### Initialize a Variable

Create a global called **counter** and initialize it to zero. 

![]({{site.images}}/timer-exploration-01.png)

### Create some Procedures

To keep our code organized, we're going to create two procedures: *updateCounter* and *updateDisplay*. We were asked in class "how do you break down your code into smaller pieces?" A short answer to this question could be "use procedures."

![]({{site.images}}/timer-exploration-03.png)

You're now ready for a series of explorations and questions. **As a pair, capture the answers to the questions below in a Word/OpenOffice/Google document**.

## Count and Reset

Your first task is to do the following:

1. Increment the counter every time the clock ticks.
2. Update the text box with the value of the counter.

**Question**: How quickly does the timer update?

## Slow Down the Timer

One way that we could slow this down is to change the timer interval.

1. In the *Initialize* handler, set the timer interval so that the counter is only incremented once per second. There is a block in the Clock menu for setting the TimeInterval; please use this rather than changing the property in the layout.

**Question**: What are the units of the timer? 

**Question**: How many of those units are in a second?

**Question**: What value would you use if you wanted the timer to fire twice per second? Three times?

## Limit the Counter

Keep the clock running slowly--say, ticking once per second. Now, limit your counter so that it never counts above 5.

1. Modify *updateCounter* so that when it reaches five, the counter is reset to zero.

**Question**: Does this solution require an **if** block, or does it require an **if/else**? Why?

**Question**: Does the reset happen once every four seconds, or once every five seconds?

## Exploring

Finally, we're going to do something a bit new. This sets you up for thinking about how we might handle timer/counter values in the future.

1. Create a new global variable; call it **slowCounter**.
1. Every time you reset the counter, increment **slowCounter**.
1. Modify your program so that you put the value of **slowCounter** into the text box, instead of the value of the **counter**.

**Question**: How often does the text box update now?

## Final Mindbender

This last exploration will probably bend your mind a bit. Give this a try, and see what happens.

1. Reset the Clock TimerInterval so it runs at one millisecond.
1. Every time the Clock ticks, update the **counter**.
1. Every time the Clock ticks, update **slowCounter** as shown below.
1. In **updateDisplay**, show the value of **slowCounter**.

![]({{site.images}}/timer-exploration-04.png)

In the previous section, you made the clock tick very slowly --- once every second. In this code, the clock runs at full speed (ticking once every millisecond). The code pictured above updates the **counter** every millisecond, and it also updates the **slowCounter** using a **remainder**.

**Question**: How often does the text box appear to change the value of **slowCounter**?

**Question**: In the **remainder** block, what happens if you change the 1000 to a 500?

This final "mindbender" is setting you up to think more about how we update counters and other variables when we are doing animations. If you weren't 100% sure what was going on in the "mindbender," consider it a good thing to keep thinking about---we will explore this idea more in the future.

## Submission

**Naming Convention**: *username1*-*username2*-{{page.abbreviation}}.docx

**Assignment**: {{page.title}}

{{site.moodle.link}}

{% include individual-submission-short.md %}

