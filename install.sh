#!/bin/bash

# | @file install.sh
# | Responsible for guiding the user through the 
# |     installation.
# | Unfortunately, the installation involves modifying
# |     the bashrc file, which we cannot automate because
# |     is it a very customized file, so the user has to
# |     do it themselves because we do not know whether
# |     appending code blindly to that file is safe.

# | We are assigning a few script-local variables.
exit_success=0
exit_unknown=1
user=`id -u -n`
qdpath=/home/$user/QuickDirs
pspath=../preset

function main()
{
    # | Echo argument count for debugging purposes.
    echo $#
  
    if [ $# -eq 0 ]; then
        # | Default usage, no arguments. Sadly 
        # |     argument variants were abandoned because
        # |     of the nation of bashrc file. We do not
        # |     want to risk corrupting bashrc, so we
        # |     only say how to install, rather than install
        # |     it ourselves.
        echo "steps this installer should do:"
        echo "1. check if the system is compatible."
        echo "2. create the home directory."
        echo "3. copy the presets into home directory."
        echo "4. create a text file containing what to"
        echo "   paste into the profile file."
        echo "5. report status, directions."
        
        echo "NOTE: export a global variable that represents"
        echo "      that QuickDirectories is already installed"
        echo "      to avoid over-installation clutter. "
        
    else
        # | Called in an unexpected way(not implemented),
        # |     at the moment argument count has to be 0.
        echo "Unknown calling convention."
        echo ""
        echo "calling info: "
        echo "    -argc => $#"
        echo "    -argv => $@"
        echo ""

        return $exit_unknown
    fi
}

# | Run main with our arguments, and 
# |     if it succeeds, return its' return value.
(main $@ && exit $?)
