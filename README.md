# Code reproducibility and sharing (in a nutshell)
Aarhus University, Denmark. February 2020. Jakob Assmann. [j.assmann@bios.au.dk](j.assmann@bios.au.dk).
___
This repository provides a very brief introduction to code reproducibility and sharing using git and GitHub. The aim is to get you started as quickly as possible. By nature, the content is not intended to be a comprehensive discussion of the topic. If you wish to delve in deeper, check out the bountiful web and scientific literature.

## Content
1. [What is code reproducibility? Why share your code?](#what-is-code-reproducibility?-why-share-your-code?)
2. [git and GitHub](#git-and-github)
3. [Getting started with git and GitHub](#getting-started-with-git-and-github)
4. [Push and pull frequently!](#push-and-pull-frequently)
5. [Documenting your code and metadata](#documenting-your-code-and-metadata)
6. [Licensing your code](#Licensing-your-code)
7. [GitHub and scientific data storage](#github-and-scientific-data-storage)
8. [Addtional resources](#addtional-resources)
9. [Abouth this repository](#about-this-repository)
10. [License](#license)

## What is code reproducibility? Why share your code?
Reproducibility in science is a complex issue and goes right to the the core of scientific philosophy. [Goodman et al. 2016](https://doi.org/10.1126/scitranslmed.aaf5027) recent(ish) discussion on the subject in *Science Translational Medicine* is an excellent starter, but you will find plenty of other good reading out there.

Simply put, the key idea behind code reproductibility is to ensure that your process of getting from your raw data to your results is as transparent as possible. Ideally, any interested researcher should be able to conduct your statistical analysis and re-create your figures, tables and outputs simply by downloading your data and running your code. 

If you managed to produce reproducible code, you will not only allow other researchers to fully judge the quality of your findings, but you also give the scientific community a chance to build on the hard work that you have done.

There are many more good reasons to share your code and to make sure it is as well documented as possible:
- You would like to share code with friends, colleagues or collaborators working on a joint project.
- You're producing work for a journal or funding body that requires open access to all data and code.
- In ten years time (or sooner) you look back at your work, but you may have forgotten what you did.
- ...

## git and GitHub 

There are some excellent tools that can help you to manage, share and document your code. We focus on two of them:
- **git** - a programme that documents and tracks changes in your code as back-up and for collaboration.
- **GitHub** - a cloud-like platform that hosts code and data with tools that make collaborative coding easy.

### git

The programme **git** has become a standard for version control in open source software development. Installed on your computer, it tracks changes to all files in any directory you tell it to. Handy if a change you made the week before is breaking your code and you want to go back, but also if multiple people work on the code. 

Knowing excactly when and who made a change to the code, **git** can merge changes to a file from different developers into one. To further facilitate sharing, **git** can sync the changes made locally on your computer to a remote repository. This repository can be on a local server (e.g. at your univeristy) or on a server on the web.  

### GitHub
The code sharing platform **GitHub** is the most popular platform for hosting **git** repositories. The free plan only allows you to create private repositories with a maximum of three colaborators. But as a student / teacher you can join the [education programme](https://education.github.com/), which gives you free access to the 'Pro' plan with unlimited private repositories. 

In addition to hosting **git** repositories, **GitHub** has lot of extras that make collaborative coding easier, these inlcude issue tracking, milestone setting etc. We will not go into these here, but I recommend you to check them out!

Recently, [GitLab](https://about.gitlab.com/) - an alternative to **GitHub** - has increased in popularity. Functionally they are much the same, but **GitLab** allows you to make unlimited private repositories without signing up to an education programme. Good news: you can simply log on to **GitLab** using your **GitHub** account. Pick your choice!

### git and GitHub for scientific code reproducibility

Combining **git** and **GitHub** (or alike) brings along great advantages for scientific code reproduciblity. 

First, during development you track all the changes made to the code and data, basically documenting their evolution. Second, you also document who has contributed to the code. And finally, it's easy to document the code and share it with the public. At the end of a project you will simply have to make the repository public!

**GitHub** can also be a good place to store your raw data upon publication, but see the [**GitHub** and scientific data storage](#github-and-scientific-data-storage) section below.

## Getting started with git and GitHub!

From here on I'll assume that you're mainly coding for statistical purposes using R and R Studio, and that both as well as [git](https://git-scm.com/downloads) are fully set up on your computer.

You can try to complete the following tasks:
- [Task 1: Create a repository and clone it to your computer.](#task-1-create-a-repository-and-clone-it-to-your-computer)
- [Task 2: Make some changes.](#task-2-make-some-changes)
- [Task 3: Sync (push/pull) to GitHub.](#task-3-sync-pushpull-to-github)
- [Task 4: Invite a collaborator to your GitHub repository.](#task-4-invite-a-collaborator-to-your-github-repository)
- [Task 5: Simultaneously edit a file.](#task-5-simultaneously-edit-a-file)

### Task 1: Create a repository and clone it to your computer.
Create your own repository by copying this one:

1. **On the top of this website** click the green 'Use this template' button (maybe by opening it in a new window / tab).

!['Image'](/images/GitHub_top_panel.png)

2. Give the repostiory a name and decide whether you would like it to be public or private.

Clone the content of the repository to your local computer using RStudio:

  1. On the main page of *your new* repostiory, click the 'Clone or Download' button in the top right.
!['Image'](/images/GitHub_clone.png)
  2. Copy the **HTTPS repository url** to the clipboard.
  3. Open RStudio.
  4. Create a 'New Project', select 'Version Control' and 'Git', paste the **HTTPS repository url** into the relevant field and specify the local directory where you want the project to be saved. Finish by clicking 'Create Project'.
  5. Enter your GitHub username and password if you're doing this for the first time.

Well done! You have created and cloned your first repository using a template. You could have also created an empty one from scratch (try it out later!), but for now having some content in the 'repo' will speed things up.

**Important:** When you clone a repository to your local computer, **git** will automatically track any changes made to files in the local repository folder.

### Task 2: Make some changes.

This repo - a common short for repository - is populated with a couple of R scripts in the /scripts folder, a CSV file containing some numbers in the /data folder, and a plot output in the /plots folder. Make a change to one of the R scripts!

1. Open one of the two R scripts in RStudio.
2. Change something! (e.g. add an in-line comment, or change a number).
3. Save the file.

After saving the file **git** will automatically notice that you have changed the file. You can see that it appeared in the 'Git' pane on the top right of the RStudio default view. If you can't see the pane bring it to focus via 'View' -> 'Show Vcs'. 

Let's look what happened there:

1. Highlight the file you changed in the RStudio 'Git' pane with a click.
2. Press the 'diff' button in the top-left of the 'Git' pane.

!['Image'](/images/RStudio_git_pane.png)

A new window will open that highlights the changes you have made. Now, currenlty **git** has only noticed that you have made a change, but the change has not been logged. The file is saved locally on your harddrive, but the **git** is waiting for you to confirm the change. This gives you the opportunity to make further changes to the file if you want to. 

!['Image'](/images/RStudio_review_changes.png)

Once you're satisfied with the change you have made you need to 'commit' the change. Good news: you can commit changes for a single file or multiple files at once. However, you will *always* have to add a short message to the commit that briefly explains the changes you have made. **Git** will get angry at you if you don't add a message (try it out later).

Commit your change: 

1. Click the little checkbox next to the file you have changed.
2. Add a message in the 'Commit message' box. (keep it short and informative).
3. Press the 'Commit' button.

Your changes are now commited (logged) by git.

*Note: When you commit a change for the very first time you might get an error if your global username and email address are not set. To set the email address and username you have to do the following: 1) open a terminal (on Windows look for a programme called git-bash, on UNIX systems just open any terminal) 2) copy the two commands from the error message line by line and replace the default email address and username accordingly.*

### Task 3: Sync (push/pull) to GitHub.

Once you have commited your changes they're logged on your local computer, but the changes have not been synced with your remote repository on **GitHub** yet. To update the remote repostiory we need to 'push' our changes:

1. Push the changes by pressing the 'Push' button in the 'RStudio: Review Changes' window or in the RStudio 'Git' pane.
2. Follow the flow and read the messages. You might have to enter your GitHub account name and password again.

To check that your changes have been pushed you can navigate to the file you changed on **GitHub** and view it. 

**GitHub** also has a nice way of visualising the change history of a file. When you have opened a code or text file on **GitHub** you can click 'History' button and you will see all commits that have affected the file. If you click on the commit code you will see the changes made for that commit. Try it out!

### Task 4: Invite a collaborator to your GitHub repository.

It's time to collaborate! You will need a friend for this. :)

1. Ask your neighbour (if you are at the workshop) or a friend for their **GitHub** account name.
2. On the **GitHub** repository website, go to 'Settings' in the top panel of your repository overview.
3. Click on 'Manage access'.
4. Click on 'Invite a collaborator'.

Your friend / neighbour will get an email with an invite to collaborate. They will have to click the link to accept the collaboration.

### Task 5: Simultaneously edit a file.

First, sync a change between computers:

1. With your friend / neighbour, decide on one of you to clone the others repository to their local computer.
2. Decide on one of the R scripts to change.
3. Make a change to the script on one of your computers, save, commit and push the change.
4. Pull the changes on the other computer.

Easy, right!? Now let's repeat the exercise but this time both of you edit the file at the same time.

1. Make sure you have both pulled the latest changes from the repo.
2. Both of you make a change to the same file by editing __*different*__ lines.
3. Save, commit and push first on one, then on the second computer.

You should get an error message when pushing from the second computer. This is because the repository on **GitHub** now has a more up-to-date version of the file, a merge is required. To carry out the merge do the following:

1. Pull on the second computer.
2. **Git** will then auto-merge by combining both changes made to the file. 
3. Push on the second computer to update the **GitHub** repository with the merge.
4. Pull on the first computer to synchronise the merged changes. 

Sweet, isn't it? No complicated juggling of different versions of files needed on your end, and if you're working with someone far away, you can just call them and push / pull to share the code.

**If you feel brave:** repeat the above exercise, but this time both of you **edit the same line** and see what happens.

To prevent merge conflicts where auto-merging is not able to solve the conflict, it's good to communicate if you and a friend are working on the same lines in file. Hopefully, the chances for that are pretty low. Espcially if you push and pull frequently!

## Push and pull frequently!

There is one easy route to success with **git** and **GitHub**: **Push and pull frequently!**

## Documenting your code and metadata

Good documentation is key to make your code reproducible and easy to understand to collaborators, friends or anonymous readers. A lot has been written about the topic and there is no single right way of doing it. Like with all things though, the more you engage with it the easier it will become.

I recommend start by looking at what other people did. How did your collaborators / friends document their code? How did the authors of your favourite paper tackle the problem? What are the standards at the big databases [Dryad](https://datadryad.org), [gbif](https://www.gbif.org/) and alike? What about the [R EML package](https://nceas.github.io/oss-lessons/ecological-metadata/ecological-metadata.html)?

You will soon come up with something that works well for sharing your data and code. And if you're unsure, ask for feedback!

A few personal tips:
- Make sure your repository always contains a text or readme file with at least: **Author name(s), Affiliations, Contact Details, Date, A brief summary of content, Associated publications, License information**.
- Short and informative **in-line comments are key to easily readable code**. MiT staff [suggests](https://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-189-a-gentle-introduction-to-programming-using-python-january-iap-2011/lectures/MIT6_189IAP11_comment.pdf) at least one in-line comment every 1-4 lines.
- Check out [**GitHub**'s markdown](https://guides.github.com/features/mastering-markdown/) you can use it to rapidly create professional looking readme files for **GitHub** repositories. 
- Have a look at the code and readme files in this repository, I tried to keep everything as clearly and well documented as possible.

## Licensing your code

When making your code / repository public it is important that you include information on how, or how not, you would like people to use your code. With many funding agencies these days you're reuquired to put your outputs into the public domain. If that sounds confusing to you, check out the [Creative Commons Website](https://creativecommons.org/share-your-work/), search on google and speak to your friends or colleagues.

**Git Hub** offers to add a license files of any possible type when creating your new repository. It can be a good idea to do so, but I also like stating the license in the main readme file.

## GitHub and scientific data storage

In addtion to storing your code, **GitHub** can also store your raw data. Actually, including both your raw data, the code that cleans it, and the code that does the analysis in a single repository is a good way of making your data and analysis reproducible. 

There is one thing to note though: **GitHub** is not well suited for storing large datasets. **GitHub** will complain if you push any file larger than 50 MB. You can circumvent this limit (try google), but there is a good reason for not doing so. Large data might be better placed in a dedicated scientific repository, such as [Dryad](https://datadryad.org) or [Zenodo](https://zenodo.org/).

If you store your data in an external server, or if you include data from external sources in your analysis that is not your own, it is importnat to document in your repository how the data has to be integrated in your analysis. You can either do that by setting up dedicated scripts or creating well written documentation. 

## Addtional resources

When stuck: harness the power of google. Like with any matters related to programming a well targeted search is likely to return help in seconds. Here are some addtional pointers:

- Dedicated tutorial for [git with R Studio](https://nceas.github.io/oss-lessons/parallel-computing-in-r/parallel-computing-in-r.html). 
- Git tutorial on [harnessing git on the command line](https://git-scm.com/docs/gittutorial).
- [Videos](https://git-scm.com/videos) on version control with git.

## About this repository

The content in this repository was developed for a lab meeting of Signe Normand's [VegDyn research group](https://twitter.com/VegDyn) at AU and the AU [Institute for Biochange's](https://bios.au.dk/om-instituttet/organisation/oekoinformatik-biodiversitet/projects/biochange/) weekly seminar for masters students.

Repository structure:
```
/data         Some semi-random data
/images       Image files used in this readme.md file.
/plots        Plot output from the R scripts in /scripts.
/scripts      Example R scripts.
/slides       The slides used during the intro.
readme.md     This file.
.gitignore    File telling git to ignore certain files (such as RStudio project files).
```

## License

<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons Licence" style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International License</a>.
