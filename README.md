![Banner](gallery/Banner2.png)

## Table of Contents

* [Introduction](#intro)
* [Features](#features)
* [Installation](#install)

## <a name="intro">Introduction</a>

> QuickDirectories is a simple way of managing thinking space.

Programmers often struggle to find that nice and simple structure for managing our current tasks. 

Our current projects become old projects, and we just don't know where to put all of those old projects.

I came up with a nice and simple way of managing your thinking space so that you have a nice amount of working space, 
and ability to archive current workspaces for later.

I call this way, QuickDirectories._

Let me tell you how it works.

## <a name="features">Features</a>

QuickDirectories has many core apps, and capacity to extend and modify.

<a name="core-apps">Core Apps</a>

* [quickstatus](#quickstatus)
* [archive](#archive)
* [...](#)
* [...](#)
* [...](#)

### quickstatus

QuickDirectories gives you a special directory called tests which contains 8 folders named 

* quick1
* quick2
* quick3
* quick4
* quick5
* quick6
* quick7
* quick8

I decided that 8 folders is one more thing than the number of things a human can remember, and at that point, you <br />
may as well make a new subdirectory, or [archive](#archive) what you have.

Screenshots:

  ![screenshot](gallery/0000.png)
  ![screenshot](gallery/0001.png)
  ![screenshot](gallery/0002.png)
  ![screenshot](gallery/0005.png)
  ![screenshot](gallery/0006.png)

### archive

QuickDirectories has the ability to archive your workspace's 8 test directories into an archive directory <br />
that contains a file named date.txt.

It is up to you to rename the archive to something meaningful by typing "@qd-archives", and editing the archive name.

It is worth noting that the archives are created using UUIDs, which means it is possible for them to collide, but <br />
the odds of that happening are low beyond any number you can possibly write out on a piece of paper, <br />
so for the meantime, be aware of that risk if you are not renaming archives regularly.

Screenshots:

  ![screenshot](gallery/0002.png)

  > NOTE: the error was that it had a bug in showing quickstatus, no directories were harmed in the process.

  ![screenshot](gallery/0003.png)
  ![screenshot](gallery/0007.png)

## <a name="install">Installation</a>

First of all, you download this repository.

Then you run ./profile to let you know whether your filesystem structure is compatible with QuickDirectories. <br />
This step will warn you if any of your directories overlap with directories the the configuration script will try to create.

After running the profiler, run the configuration script by typing ./configure and the script will set up <br />
all the directories, and put all the files in the right places.

Modify your bash profile to run the setup script by adding the following lines:

```
user=`id -u -n`
source $HOME/QuickDirs/apps/startup/min-setup.sh
source $HOME/QuickDirs/apps/startup/core-app-setup.sh
source $HOME/QuickDirs/apps/startup/my-app-setup.sh
```

Restart your shell and QuickDirectories should be installed.



