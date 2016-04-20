#!/bin/bash
##
# assumes min-setup.sh
#
# sets up default apps.
##

echo -e "core-app-startup> \e[32mrunning\e[0m"

# perform tests.
which perl
perltest=$?

which perl
if [ $perltest -eq 0 ]; then
    alias quickstatus="perl $QD_APPS/core/quickstatus/quickstatus"
    alias archive="bash $QD_APPS/core/archive/archive"
    perl $QD_APPS/core/quickstatus/quickstatus
else
    echo -e "\e[31mquickstatus requires Perl.\e[0m"
    echo -e "\e[31marchive requires Perl.\e[0m
    echo ""
fi

if [ $perltest -eq 0 ]; then
else
fi

echo -e "core-app-startup> \e[32mdone\e[0m"
