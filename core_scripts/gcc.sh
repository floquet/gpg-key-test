#! /bin/bash
bold=$(tput bold)
normal=$(tput sgr0)
# printf '%s\n' "${normal}User = ${USER}; platform = ${HOSTNAME}; $(date); running ${core}${bold}git.sh${normal}"
printf '%s\n' "$(date), running \${core}${bold}gcc.sh${normal}"

# https://stackoverflow.com/questions/11714827/how-to-turn-on-literally-all-of-gccs-warnings/11720263
alias show_gcc_warnings_all='gcc -Q --help=warning'
alias show_gcc_warnings_subset='gcc -Wall -Wextra -Q --help=warning'

alias show_gcc='port select --list gcc'
alias show_select='echo "sudo port select --set gcc mp-gccX"'
alias show_gcc_versions='port select --list gcc; echo "sudo port select --set gcc mp-gcc7"'

# # F U N C T I O N S
function selector(){
  echo "selecting gcc version "$1;
  sudo port select --set gcc $1
}

alias contents_gcc='echo "ALIAS show_gcc show_gcc_versions show_gcc_warnings show_select"; echo "FUNCTION selector"'
