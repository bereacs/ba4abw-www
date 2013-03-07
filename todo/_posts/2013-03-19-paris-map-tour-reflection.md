---
title: "Paris Map Tour Reflection"
slug: "Taking a tour"
abbreviation: "chapter-6"
publish: "yes"
category: "assignment"
layout: post
---

## Task

Read Chapter 6, *Paris Map Tour*. As always, you can find this in Moodle in the folder **App\_Inventor\_Chapters** under Resources. Then build the app described and answer these questions.

## Objectives

1. Learn how we can launch other apps from an app we build using the ActivityStarter component.
1. Learn about lists and how we can allow the user to choose from a list using the ListPicker component.

## How to Read in {{site.short}}

The active reading response environment is temporarily suspended while it is under construction. In the meantime, a Word document (or PDF, if you're exporting from Google Docs, or .odt, if you're using Open Office) is just fine.

Make sure to include the name of the assignment, your name, email, and the date in the document you create.

## Reflection and Rumination

1. We know that the purpose of the ListPicker component is to display a list of items for the user to
choose from.  Our Paris Metro Tour app uses a property of the ListPicker called Elements.  In your own words, describe the purpose of the Elements property and why we are setting this property. Hint: You might want to go back and look in Chapter 19 if you can't remember--this property was discussed there.

1. Our Paris Metro Tour app also uses a property of the ListPicker called Selection.  What is the purpose of the Selection property and how does Selection differ from Elements?

1. In this app, we want a list of tour choices to appear as soon as our app starts.  How is this accomplished in the code?  If you did not want the tour choices to appear wnen the app started, can you imagine other ways the app might alternatively present the user with these choices?  Describe a couple of alternatives.

1. In Chapter 19, we read about two events related to the ListPicker component. Frist, we learned that the ListPicker.BeforePicking event is triggered when the user clicks the ListPicker’s associated button but before the choices are listed. We also learned that when the user chooses an item in the list, the ListPicker.AfterSelection event is triggered.  In the Paris Map Tour app, we don't use the ListPicker.BeforePicking event; explain why the ListPicker.BeforePicking event is not necessary.

1. What is an index and why do we need it when we are working with lists?

1. This chapter uses some Internet jargan which might be confusing.  You probably know that a URL is a web address, usually beginning with http. The chapter asks you to create a list called DataURIs, but the chapter does not make it clear what the heck a URI is or whether or not a URI is the same as a URL.  Use Google to try to figure this out.  Then in your own words, use no more than one paragraph to explain in non-technocal language.  Give the link to the reference you found most helpful in answering this question.

1. The ActivityStarter component allows your app to launch other apps.  List a couple of other apps which might be useful to launch in a tour app and explain why you think these might be useful for a tour.


## Submission

**Naming Convention**: *username*-{{page.abbreviation}}.docx

**Assignment**: {{page.abbreviation}}

{{site.moodle.link}}

{% include individual-submission-short.md %}

