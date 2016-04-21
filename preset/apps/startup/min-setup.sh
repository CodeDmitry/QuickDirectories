#!/bin/bash
##
# bare minimal setup.
##

# global data division begin.
    # exit code section begin.
        exit_success=0
    # end section.

    # global value section begin.
        user=`id -u -n`
    # end section.
 # end division.

# procedure division
echo -e "min-startup> \x1b[32mrunning\x1b[0m"

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
echo -e "min-startup> \x1b[32mdone\x1b[0m"

return $exit_success
# end division.
