#! /bin/bash
bold=$(tput bold)
normal=$(tput sgr0)
printf '%s\n' "$(date), running \${core}${bold}cmake.sh${normal}"

export my_log=${id}'alias_assignments.txt'

alias again='cd ../; rm -rf build; mkdir build;  cd build'
alias quick='rm -rf build/ && mkdir build && cd build && cmake ..'
alias quicker='cd ..; quick;  make'

alias crun='cd $DEMO_HOME; cd build; cmake ..; make'

alias contents_cmake='echo "ALIAS again, quick, quicker, crun: EXPORT my_log"'
