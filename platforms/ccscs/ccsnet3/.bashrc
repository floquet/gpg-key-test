#!/bin/bash
##-*- Mode: bash -*-
##---------------------------------------------------------------------------##
## File  : ~/.bashrc
## Date  : July 5, 2017
## Author: Daniel Topa
## Note  : Copyright (C) 2017, Los Alamos National Security, LLC.
##         All rights are reserved.
##
##  Bash configuration file upon bash shell startup
##---------------------------------------------------------------------------##

# # I D E N T I F Y
export bash_file='.bashrc'
export       vol='/home/'${USER}'/'
export    gitlab=${vol}'Repos/gitlab/'
export      ccs2=${gitlab}'ccs2/'
export        kt=${vol}'kt/'

export mygcc=$SPACK_ROOT'opt/spack/linux-rhel7-x86_64/gcc-4.8.5/gcc-7.1.0-aqkc2ckyybrfatqh7o2jkd7hkd5yo6il/'

# # A L I A S
alias now='cdt; cd molecularDynamics/gamma/comd2'
alias cdt='cd ${vol}topa_sandbox'
alias gkt='cd ${kt}'

source ${ccs2}'/core_scripts/platforms.sh' # identify platform
source ${ccs2}'/core_scripts/master.sh'

# # platfrom specific instructions
cp ${vol}'.bash_profile' ${id}'/'.
cp ${vol}'.bash_logout'  ${id}'/'.

# https://stackoverflow.com/questions/2924697/how-does-one-output-bold-text-in-bash/2924753
bold=$(tput bold)
normal=$(tput sgr0)

chmod -R 755 ${kt}
#chmod -R 755 ~/topa_sandbox/

