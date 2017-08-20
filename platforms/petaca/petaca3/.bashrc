#!/bin/bash
##-*- Mode: bash -*-
##---------------------------------------------------------------------------##
## File  : ~/.bashrc
## Date  : , 2017ug 7
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
export TEAMCITY_HOME=${vol}'Applications/TeamCity/'
export DEMO_HOME=${gitlab}'CMake/'

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


