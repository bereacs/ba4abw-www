=== A BUSY COMPUTER SCIENTIST'S GUIDE TO GIT ===

# Get Updates

CMD: git pull

First, pull in changes. Before you make any edits locally, you should make sure you have the most recent version from the repository.

# Do your edits

Create files, delete files, edit files... the next step is to edit files.

# Look at the site

There were, at some point, two scripts written to make it easier to both 1) check the website locally and 2) upload.

CMD: test.bat

TEST.BAT runs jekyll with the appropriate flags. I cannot, however, remember whether this should run from the native windows CMD prompt ('cmd'), or if it should run from the Git Bash shell/Powershell. They each have a different path, and (worse) appear to cause Ruby to handle filepaths differently. I suspect the Powershell is what needs to be used, but I cannot remember.

The script contents are what you would run directly on the command line:

jekyll --server 9000 --base-url /courses/ba4abw-sp13/ --auto

Then, open a browser on localhost at port 9000. If something is broken locally, it will be broken when you upload.

# Status Check

CMD: git status

When you are ready to commit, you should first do a "git status" and find out what git thinks is going on. For example, git will tell you what files have changed, what files have been deleted, and it will also tell you what files are new, but it is not tracking.

# Add files

If you created new files, you should (at this point) add them to the version control system.

CMD: git add <filename>

If you rename a file, git treats it as a "delete." You need to "git add" the file after it has been renamed. Given that filenames carry the date they are due, this is a common occurrence.

# Check status again

Repeat your process of git add/git status until you see that everything new is being tracked, and that you're ready to go. 

# Commit changes

Now that you're happy with how the website looks, and git says everything is either:

1. Added (because it is new)
1. Updated (because it was updated, and existed previously), or
1. Removed (because you renamed it, etc.)

you're ready to commit. 

CMD: git commit -a -m "This is the commit message"

That is probably the easiest way to do a commit; it commits everything that "git status" says is ready to go, and it avoids having git open an external editor. The message will be short, but that's OK.

# Upload the site

To upload, the batch file called "upload.sh" will do an SCP of all of the files in the _site folder to the server. This is almost certainly run from the Powershell, given the ".sh" extension.

The script runs jekyll to render everything, and then does the upload.

CMD: ./upload.sh

# Lather, Rinse, Repeat

I often go through this cycle more than once. That is, I'll get one file right, then do another, then another. I try not to edit lots of files all over the place, and then commit everything. Instead, I'll work on a single day, then the assignment, then I'll go back to the day (and link things in). This means roughly three commits, one after each "operation."

It is a good idea to do a "git pull" before you begin anything new, even when in that cycle, just to make sure that no one made changes in-between. There are ways to avoid these kinds of issues w.r.t. collisions, but there isn't time to learn them and put them into place.

# Leverage TAs

Every single student in Computer Organization has been using git all semester to collaborate with classmates and turn in homework. Both of the TAs for BA4ABW are comfortable with git on the command line, and should be able to be of some assistance.

# Other Resources

Github hosts an interactive tutorial:

http://try.github.com/levels/1/challenges/1

It will show you more than you need, but it could be useful.

Jekyll is the other piece of the website; it takes the static files in Markdown and renders them out to the _site folder. 

http://mijingo.com/products/screencasts/static-websites-with-jekyll/

has a long video that talks about Jekyll from the ground up, but it covers a number of things that we don't use.

http://www.andrewmunsell.com/tutorials/jekyll-by-example/

is a step-by-step example that starts with something minimal and builds up. It also might help make some of the pieces more obvious.

http://www.andrewmunsell.com/tutorials/jekyll-by-example/#starting-your-website

is possibly a good starting point, as it skips a bit of the "install" type documentation, and gets to where the site building really begins.

-- MCJ 20130226