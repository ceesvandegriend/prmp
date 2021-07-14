#!/bin/bash
#
# Author:      Cees van de Griend <c.vande.griend@gmail.com>
# Date:        2020-03-02
# Copyright:   ©2020  C.A. van de Griend
# Description: Install and Configure Zsh environment
#


case ${OSTYPE} in
    darwin*)
	# MacOS
	OS="MacOS"
	;;
    linux-*)
	# Linux variant
	if [ -f /etc/debian_version ] ; then
	    OS="Debian"
        else
	    echo "Error: unknown Linux variant"
	    exit 255
	fi
	;;
    *)
	# Unknown
	echo "Error: unknown OS"
	exit 255
	;;
esac

if [ "${OS}" == "Debian" ] ; then
    sudo aptitude install -r -y zsh zsh-syntax-highlighting curl neofetch
fi

cat > ${HOME}/.zshenv << EOT
ZDOTDIR=$(pwd)
export ZDOTDIR
EOT

cat << TXT
==============================================
Use: chsh -s $(which zsh)
to change the shell.
==============================================
TXT
