#!/bin/bash
##
# assumes min-setup.sh
#
# sets up default apps.
##

echo -e "core-app-startup> \x1b[32mrunning\x1b[0m"

# perform tests.
echo "Looking for Perl"
which perl
perltest=$?
if [ $perltest -eq 0 ]; then
    echo -e "Perl: \x1b[32mFound\x1b[0m"
fi

if [ $perltest -eq 0 ]; then
    alias quickstatus="perl $QD_APPS/core/quickstatus/quickstatus"
    alias archive="bash $QD_APPS/core/archive/archive"
    perl $QD_APPS/core/quickstatus/quickstatus
else
    echo -e "\x1b[31mquickstatus requires Perl.\x1b[0m"
    echo -e "\x1b[31marchive requires Perl.\x1b[0m"
    echo ""
fi

echo -e "core-app-startup> \x1b[32mdone\x1b[0m"
