---
title: "Bluestacks Note"
slug: "What we're up to at Berea."
layout: infra
---

## Short Version (tl;dr)

We're developing a course for novice/first-time programmers leveraging the Android platform on Nexus 7 tablets. The students [work collaboratively in teams]({{site.base}}/infra/team-roles/) using a lightweight human centered design process while learning to code in the visual programming environment [App Inventor](http://appinventor.mit.edu/).

BlueStacks, as it happens, is a great emulator in this context.

## App Inventor and BlueStacks

App Inventor was developed at Google and is now maintained at MIT as an open source project. It was inspired by LogoBlocks and Scratch, and provides a visual programming environment for novices.

![Code Example]({{site.base}}/images/bluestacks/code-example.png)

The App Inventor install includes the Google emulation environment. A typical student machine has 2GB of RAM and has a clock speed of roughly 2GHz. The Google emulator is painfully slow in this environment.

BlueStacks, of course, is highly optimized, and runs applications incredibly smoothly. What we did not expect was that it also exposed itself as an Android emulator. So, after installing BlueStacks, the background service was visible to App Inventor, and we could easily write code in App Inventor and preview our apps in BlueStacks!

## Why BlueStacks?

We would like to use BlueStacks throughout the term as our emulation environment of choice; we did not consider this until a week ago, when Matt stumbled upon the environment in an Engadget blog post. Given that we are going to have students working in teams, doing user experience work, it made sense to have them run and evaluate Android apps at home in emulation. BlueStacks makes it easy for our students to quickly download and evaluate an application from a variety of perspectives.

The fact that it works as a test environment for programs they are writing, and does so faster and more efficiently than the "native" emulator, is just gravy.

## The Only Problem

The only problem with BlueStacks at the moment is how App Inventor and BlueStacks interact. (More likely, it is a problem with how App Inventor generates code and defines screen sizes/orientations.)

When we tell App Inventor that we want to be in "portrait" mode, we use the following idiom in the environment:

![Portrait Lock]({{site.base}}/images/bluestacks/app-inventor-portrait.png)

We can also specify "landscape," or allow the device to rotate our app as necessary. 

1. When we specify **portrait**, our app comes out in BlueStacks as being eensy-weensy. If we full-screen BlueStacks, then the app has a resolution that is the same as if we ran it in the native emulator on a phone. ([APK]({{site.base}}/images/bluestacks/HelloBerea_portrait.apk))

1. When we specify **landscape**, nothing happens. ([APK]({{site.base}}/images/bluestacks/HelloBerea_landscape.apk))

1. When we allow **free rotation**, the app does not rotate to tablet mode in BlueStacks. ([APK]({{site.base}}/images/bluestacks/HelloBerea_rotate.apk))

All of this is regardless of how we specify screen rotation in the BlueStacks environment.

An .apk of a simple app (click a picture, play a sound) is linked into each of the bullets above. That APK was generated from App Inventor.

## About Berea

We feel it is important, if only briefly, to provide a bit of context regarding Berea College and our students.

Berea College is relatively unique in the United States. It is one of eight work colleges in the nation, meaning every student must do 10 hours of labor per week in recognition of their tuition-free education. Fully 80% of our domestic students receive federal Pell grants (implying a life lived below the poverty line in the US), and we graduate students at a rate comparable to the best liberal arts institutions in the nation. After four years at Berea, nearly 5% of our graduates go on to receive a PhD in their chosen field of study. The story of Berea College is one of commitment to social change and the transformation of the world through our students.

## Conclusion

We see a lot of potential for using BlueStacks in this context. It is a better emulator than the developer's emulator (because it is cross-compiled/optimized for execution on x86), and it provides a really excellent experience for students to test a wide variety of apps. We need to explore more deeply why we have this rendering bug when developing programs in App Inventor, and if you have any insights, we certainly would appreciate hearing them.

Matt is an Assistant Professor at Berea College, entering his 6th year as a college professor. Dr. Jan Pearce is a full Professor, founder of our programme, and has been at Berea for over 20 years.

* Dr. Matt Jadud, jadudm@berea.edu, 925-238-3692 (EST, USA)
* Dr. Jan Pearce, pearcej@berea.edu

We're happy to talk more asynchronously or synchronously, as is useful.