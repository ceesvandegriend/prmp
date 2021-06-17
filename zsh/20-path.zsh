#
# Author:      Cees van de Griend <c.vande.griend@gmail.com>
# Date:        2020-03-02
# Copyright:   ©2020  C.A. van de Griend
# Description: [prmp0001] Ass ${HOME}/bin to ${PATH}
#

# Only unique paths
typeset -U path

if [ -d ${HOME}/bin ] ; then
	path+=${HOME}/bin
fi	

export path
