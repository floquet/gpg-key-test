#! /bin/bash

# # I D E N T I F Y
export bash_file='.bashrc'
export       vol='/users/'${USER}'/'
export    gitlab=${vol}'Repos/gitlab/'
export      ccs2=${gitlab}'ccs2/'

# # A L I A S
alias now='cdt; cd molecularDynamics/gamma/comd2'

source ${ccs2}'core_scripts/platforms.sh' # identify platform
source ${ccs2}'core_scripts/master.sh'

