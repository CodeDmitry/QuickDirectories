#!/bin/bash
##
# assumes min-setup.sh
#
# sets up default apps.
##

echo -e "core-app-startup> \e[32mdone\e[0m"
which perl
err=$?
if [ $err -eq 0 ]; then
    alias quickstatus="perl $QD_APPS/core/quickstatus/quickstatus"
    perl $QD_APPS/core/quickstatus/quickstatus
else
    echo -e "\e[31mquickstatus requires Perl.\e[0m"
    echo ""
fi

which uuidgen
err=$?

if [ $err -eq 0 ]; then
    alias archive="bash $QD_APPS/core/archive/archive"
else
    echo -e "\e[31marchive requires uuidgen\e[0m"
    echo "    uuidgen is not available on some systems."
    echo "    we will try to provide a buildable uuidgen"
    echo "    later at some point."
    echo "    feel free to make your own generator and name it uuidgen."
    echo ""
fi

echo -e "core-app-startup> \e[32mrunning\e[0m"
