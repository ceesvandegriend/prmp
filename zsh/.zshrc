#
# Author:      Cees van de Griend <c.vande.griend@gmail.com>
# Date:        2020-02-25
# Copyright:   ©2020  C.A. van de Griend
# Description: Configure Zsh environment
#
# 1. ~/.zshenv
# 2. ${ZDOTDIR}/.zshenv
# 3. ${ZDOTDIR}/.zprofile
# 4. ${ZDOTDIR}/.zshrc
# 5. ${ZDOTDIR}/.zlogin
# 6. ${ZDOTDIR}/.zlogout
#

DEBUG=0

for F in ${ZDOTDIR}/[0123456789][0123456789]-*.zsh ; do
    if [ ${DEBUG} -gt 0 ] ; then
	echo "Source: ${F}"
	source ${F}
    else
	source ${F}
    fi
done
