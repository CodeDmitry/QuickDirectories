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
    echo $#
  
    if [ $# -eq 0 ]; then
        # no arguments.
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
        # called in an unexpected way.
        echo "Unknown calling convention."
        echo ""
        echo "calling info: "
        echo "    -argc => $#"
        echo "    -argv => $@"
        echo ""

        return $exit_unknown
    fi
}

(main $@ && exit $?)
