#
# Author:      Cees van de Griend <c.vande.griend@gmail.com>
# Date:        2020-02-25
# Copyright:   ©2020  C.A. van de Griend
# Description: Configure Zsh environment
#

if [ ! -d ~/.cache/zsh ] ; then
	mkdir -p ~/.cache/zsh
fi

setopt histignorealldups sharehistory

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history
#
