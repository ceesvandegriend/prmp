#
# Author:      Cees van de Griend <c.vande.griend@gmail.com>
# Date:        2021-06-17
# Copyright:   ©2021  C.A. van de Griend
# Description: Configure Zsh environment
#

if [ -x /usr/bin/neofetch ] ; then
    # Debian
    /usr/bin/neofetch
elif [ -x /usr/local/bin/neofetch ] ; then
    # Apple MacOS
    /usr/local/bin/neofetch
fi

