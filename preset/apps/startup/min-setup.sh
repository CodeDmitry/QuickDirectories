#!/bin/bash
# | Sets up the basic QuickDirectories environment
# |     that the user and other scripts may rely on.

# | We are assigning a few script-local variables.
exit_success=0
user=`id -u -n`

# | Display user feedback that we are doing min-setup.
# | Reminder, `\x1b[32m` represents is an ANSI 
# |     escape code for green foreground color, 
# |     and `x1b[0m` represents an ANSI escape code
# |     for reset the ANSI foreground color to what it 
# |     was before. 
echo -e "min-startup> \x1b[32mrunning\x1b[0m"

# | These exports shall be the shellwide variables,
# |    that the user can use to find the directories,
# |    as well as are heavily relied in other scripts,
# |    to know where these places are.
export QD_HOME=$HOME/QuickDirs
export QD_TEMPLATES=$QD_HOME/my_templates
export QD_APPS=$QD_HOME/apps
export QD_TESTS=$QD_HOME/my_tests
export QD_QUICK1=$QD_TESTS/quick1
export QD_QUICK2=$QD_TESTS/quick2
export QD_QUICK3=$QD_TESTS/quick3
export QD_QUICK4=$QD_TESTS/quick4
export QD_QUICK5=$QD_TESTS/quick5
export QD_QUICK6=$QD_TESTS/quick6
export QD_QUICK7=$QD_TESTS/quick7
export QD_QUICK8=$QD_TESTS/quick8
export QD_ARCHIVES=$QD_HOME/my_archives

# | These aliasese allow the user to easily
# |     jump around the places comfortably,
# |     eg if the user wants to go to
# |     quick4 directory, they just type 
# |     `quick4`.
alias @qd-home="cd $QD_HOME"
alias @qd-apps="cd $QD_APPS"
alias @qd-tests="cd $QD_TESTS"
alias @qd-archives="cd $QD_ARCHIVES"
alias quick1="cd $QD_QUICK1"
alias quick2="cd $QD_QUICK2"
alias quick3="cd $QD_QUICK3"
alias quick4="cd $QD_QUICK4"
alias quick5="cd $QD_QUICK5"
alias quick6="cd $QD_QUICK6"
alias quick7="cd $QD_QUICK7"
alias quick8="cd $QD_QUICK8"

# | Display user feedback that the min-setup has 
# |     finished successfully.
# | Reminder, `\x1b[32m` represents is an ANSI 
# |     escape code for green foreground color, 
# |     and `x1b[0m` represents an ANSI escape code
# |     for reset the ANSI foreground color to what it 
# |     was before. 
echo -e "min-startup> \x1b[32mdone\x1b[0m"
