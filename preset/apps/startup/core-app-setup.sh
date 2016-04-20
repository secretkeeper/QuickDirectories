#!/bin/bash
##
# assumes min-setup.sh
#
# sets up default apps.
##

echo -e "core-app-startup> \e[32mrunning\e[0m"

# perform tests.
echo "Looking for Perl"
which perl
perltest=$?
if [ $perltest -eq 0 ]; then
    echo -e "Perl: \e[32mFound\e[0m"
fi

if [ $perltest -eq 0 ]; then
    alias quickstatus="perl $QD_APPS/core/quickstatus/quickstatus"
    alias archive="bash $QD_APPS/core/archive/archive"
    perl $QD_APPS/core/quickstatus/quickstatus
else
    echo -e "\e[31mquickstatus requires Perl.\e[0m"
    echo -e "\e[31marchive requires Perl.\e[0m"
    echo ""
fi

<<<<<<< HEAD
=======
if [ $perltest -eq 0 ]; then
else
fi

>>>>>>> 1fa21cb2aa4a9e1a554b80273b6ec1800aaf4e6e
echo -e "core-app-startup> \e[32mdone\e[0m"
