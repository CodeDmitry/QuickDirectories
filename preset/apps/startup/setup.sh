#!/bin/bash
# | @file setup.sh
# | Responsible for running all the setup scripts in 
# |     the correct order.
# | The contents of this file can be cut and pasted
# |     directly into bashrc, or it can be sourced
# |     as `$HOME/QuickDirs/apps/startup/setup.sh`.

if [ -n $HOME ]; then
    # | Important: min-setup.sh must be sourced first.
    # |     The other files can be sourced in any order.
    source $HOME/QuickDirs/apps/startup/min-setup.sh
    source $HOME/QuickDirs/apps/startup/core-app-setup.sh
    source $HOME/QuickDirs/apps/startup/my-app-setup.sh
else
    # | We cannot reliably do anything without knowing 
    # |     where the user's home directory is.
    echo "setup.sh> Please set your HOME variable.";
    echo "setup.sh> Nothing has been changed.";
    exit;
fi

