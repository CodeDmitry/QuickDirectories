#!/bin/bash

# | @file core-app-setup.sh
# | This script assumes that min-setup.sh has already
# |     been "source"d in the bashrc file before
# |     this script is being "source"d.

# | This script is responsible for setting up the default 
# |     apps, which at the time of writing are:
# |     1. The `quickstatus` command which allows you to 
# |         see which directories are empty and which ones 
# |         are in use.
# |     2. The `archive` command which takes all the 8 
# |         directories and moves them to location 
# |         specified by $QD_ARCHIVES
# |         (set in min-setup.sh). 
# |         Making room for more experiments.

# | Notify the user that the core-app-setup script is 
# |     beginning being sourced.
# | Reminder, `\x1b[32m` represents is an ANSI 
# |     escape code for green foreground color, 
# |     and `x1b[0m` represents an ANSI escape code
# |     for reset the ANSI foreground color to what it 
# |     was before. 
echo -e "core-app-startup> \x1b[32mrunning\x1b[0m"

# | Perform tests.

# | Make sure Perl exists, as our apps rely on it.
echo "Looking for Perl"
which perl
perltest=$?
if [ $perltest -eq 0 ]; then
    # | Notify the user that core-app-setup has found Perl.
    # | Reminder, `\x1b[32m` represents is an ANSI 
    # |     escape code for green foreground color,  
    # |     and `x1b[0m` represents an ANSI escape code
    # |     for reset the ANSI foreground color to what it 
    # |     was before. 
    echo -e "Perl: \x1b[32mFound\x1b[0m"
    # | TODO: Consider adding a notice for when Perl is 
    # |     not found.
fi

if [ $perltest -eq 0 ]; then
    # | Install quickstatus and archive as commands that the user
    # |     can type without their full paths.
    alias quickstatus="perl $QD_APPS/core/quickstatus/quickstatus"
    alias archive="bash $QD_APPS/core/archive/archive"
    # | Display the current state of the 8 directories(active/ready)
    # |     each time the shell is opened, to let user know where
    # |     they can put their experiment.
    perl $QD_APPS/core/quickstatus/quickstatus
else
    # | Notify the user that quickstatus and archive
    # |     commands require Perl. 
    # | Reminder, `\x1b[31m` represents is an ANSI 
    # |     escape code for red foreground color, 
    # |     and `x1b[0m` represents an ANSI escape code
    # |     for reset the ANSI foreground color to what it 
    # |     was before. 
    echo -e "\x1b[31mquickstatus requires Perl.\x1b[0m"
    echo -e "\x1b[31marchive requires Perl.\x1b[0m"
    echo ""
fi

# | Notify the user that the core-app-setup script has
# |     finished being sourced.
# | Reminder, `\x1b[32m` represents is an ANSI 
# |     escape code for green foreground color, 
# |     and `x1b[0m` represents an ANSI escape code
# |     for reset the ANSI foreground color to what it 
# |     was before. 
echo -e "core-app-startup> \x1b[32mdone\x1b[0m"
