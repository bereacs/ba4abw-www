---
title: "Setting Up App Inventor on Windows 7"
slug: "This is tricky; read carefully."
category: infra
layout: infra
---

## Get/Login to a Google/gmail account

To use App Inventor, you need to have a Google or a gmail account.  If you do not already have one, go to [https://accounts.google.com/SignUp?service=mail](https://accounts.google.com/SignUp?service=mail) and sign up.

## Test your Java configuration

1. App Inventor runs in a browser.  We recommend Mozilla Firefox 3.6 (or higher) or Google Chrome 4.0 (or higher).  Open one of these browsers.
1. Your computer needs to run an up to date version of Java. Test your Java configuration by performing THREE tests:
    * First, visit the Java test page at [http://www.java.com/en/download/help/testvm.xml](http://www.java.com/en/download/help/testvm.xml) 
    * **THIS WILL TAKE A LONG TIME**. Be patient. Keep waiting until you see a message like the following that Java is working and that the version is up to date:
    
    <img src="{{site.base}}/images/java-is-working.png" alt="Your Java is Working"/>
	
    If the page instead indicates that you are running an older version, you must download the newest version of Java and install.
	
    * Next, run the AppInventor Java test by clicking: 
	[http://beta.appinventor.mit.edu/learn/setup/misc/JWSTest/AppInvJWSTest.html](http://beta.appinventor.mit.edu/learn/setup/misc/JWSTest/AppInvJWSTest.html)
	
	This page has two parts.  It will first check that your browser is properly configured to run Java.  You should see:
	
	Part I: App inventor is checking your browser for running programs with Java Web Start. _Checking_
	
	<img src="{{site.base}}/images/browser-config-good.png" alt="Your browser appears to be configured properly"/>



	
	If you see that image, go ahead and push  <a href="http://beta.appinventor.mit.edu/learn/setup/misc/JWSTest/notepad.jnlp"><img src="{{site.base}}/images/java-launch.png" alt="launch" /></a> button. We made it so this button works as well; you can push either one. 

  (It is possible that this will *not* launch anything, but *instead* download a file called <code>notepad.jnlp</code>. Double-click that file to run it.)


1. App Inventor will not work on your computer if these tests do not succeed. Don't go on to try to use App Inventor until you've dealt with the issue.

## Install the App Inventor Software

Before you can use App Inventor, you need to install some software on your computer. The software you need is provided in a package called App Inventor Setup.

1. The download is going to be quite large (90 MB), so we strongly recommend connecting your laptop with an Ethernet cable.  (It will be much, much, much faster over an Ethernet cable than over Berea's wireless.)

1.     After you have connected with an Ethernet cable, download the installer from [http://dl.google.com/dl/appinventor/installers/windows/appinventor_setup_installer\_v\_1\_2.exe](http://dl.google.com/dl/appinventor/installers/windows/appinventor_setup_installer_v_1_2.exe)

1. Locate the file <code>AppInventor_Setup_Installer_v_1_2.exe</code> in your Downloads folder or your Desktop, and run the installer.

1. Click through the steps of the installer. Be sure that you do not change the default installation location. 

## Start the App Inventor Designer

In your web browser, go to the App Inventor website at [http://beta.appinventor.mit.edu](http://beta.appinventor.mit.edu).
Since this is the first time you've used App Inventor, it will ask for permission to connect to your Google account.  You will need to sign in and connect, and then you'll see the Projects page, with no projects in it yet. Your project page should look like this:

<img src="{{site.base}}/images/app-inventor-projects.png" alt="App Inventor Welcome"/>
