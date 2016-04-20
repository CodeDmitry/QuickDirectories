## QuickDirectories

#### Introduction

> QuickDirectories is a simple way of managing thinking space.

Programmers often struggle to find that nice and simple structure for managing our current tasks. 

Our current projects become old projects, and we just don't know where to put all of those old projects.

I came up with a nice and simple way of managing your thinking space so that you have a nice amount of working space, 
and ability to archive current workspaces for later.

I call this way, QuickDirectories._

Let me tell you how it works.

#### Features
1. 8 quick access directories that can be accessed by typing commands "quick1, quick2, ..., quick8". <br />
  8 directories is 1 more than number of things a person can keep track of in their head.

  ![screenshot](gallery/0000.png)
  ![screenshot](gallery/0001.png)

2. ability to archive workspace. <br />
  ![screenshot](gallery/0002.png)

  > NOTE: the error was that it had a bug in showing quickstatus, no directories were harmed in the process.

  ![screenshot](gallery/0003.png)

3. more core apps!

4. make and share apps with friends!

## Installation

First of all, you download this repository.

Then you run ./profile to let you know whether your filesystem structure is compatible with QuickDirectories. <br />
This step will warn you if any of your directories overlap with directories the the configuration script will try to create.

After running the profiler, run the configuration script by typing ./configure and the script will set up <br />
all the directories, and put all the files in the right places.

Modify your bash profile to run the setup script by adding the following lines:

```
user=`id -u -n`
source /home/$user/QuickDirs/apps/startup/min-setup.sh
source /home/$user/QuickDirs/apps/startup/core-app-setup.sh
source /home/$user/QuickDirs/apps/startup/my-app-setup.sh
```

Restart your shell and QuickDirectories should be installed.



