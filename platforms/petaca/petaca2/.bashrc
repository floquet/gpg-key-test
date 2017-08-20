#!/bin/bash
##-*- Mode: bash -*-
##---------------------------------------------------------------------------##
## File  : ~/.bashrc
## Date  : July 10, 2017
## Author: Daniel Topa
## Note  : Copyright (C) 2017, Los Alamos National Security, LLC.
##         All rights are reserved.
##
##  Bash configuration file upon bash shell startup
##---------------------------------------------------------------------------##

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

# # I D E N T I F Y
export bash_file='.bashrc'
export        vol='/home/'${USER}'/'
export     gitlab=${vol}'Repos/gitlab/'
export       ccs2=${gitlab}'ccs2/'
export SPACK_ROOT='/home/dantopa/Applications/spack/'
#export TEAMCITY_HOME='/scratch/teamcity/TeamCity/'
export TEAMCITY_HOME=${vol}'Applications/TeamCity/'
export DEMO_HOME=${gitlab}'CMake/'
#expo tspack_head="linux/"
#export PATH=${SPACK_ROOT}bin:/usr/libexec/python2-sphinx:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/home/dantopa/.local/bin:/home/dantopa/bin
#export PATH=${SPACK_ROOT}bin:/usr/libexec/python2-sphinx:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/home/dantopa/.local/bin:/home/dantopa/bin

# # A L I A S

source ${ccs2}'/core_scripts/platforms.sh' # identify platform
source ${ccs2}'/core_scripts/master.sh'

# # platfrom specific instructions
cp ${vol}'.bash_profile' ${id}'/'.
cp ${vol}'.bash_logout'  ${id}'/'.

#. ${ccs2}core_scripts/teamcity.sh # environment set up
alias now='cd ${gitlab}emergency_fortran/'
alias pt='cd ${gitlab}petaca2-TeamCity/BuildAgents/petaca2.beta/'
alias va='vi ${TEAMCITY_HOME}buildAgent/bin/agent.sh'
alias glogs='cd ${TEAMCITY_HOME}logs'

alias mytop='/home/dantopa/Applications/spack/opt/spack/linux-fedora24-x86_64/gcc-6.3.1/htop-2.0.2-vxqdj5pittgxiusszalylrju5ogdqatq/bin/htop'
alias gtc='cd /home/dantopa/Repos/gitlab/petaca2-TeamCity/BuildAgents/petaca2.beta'
alias quick='rm -rf build/ && mkdir build && cd build && cmake ..'

export dir_logs_repo=${gitlab}'logs/petaca2/'
export dir_logs_local=${vol}'Applications/TeamCity/buildAgent/logs/'

alias  logs_repo='cd ${dir_logs_repo};  pwd'
alias logs_local='cd ${dir_logs_local}; pwd'

