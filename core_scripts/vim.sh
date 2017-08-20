#! /bin/bash
bold=$(tput bold)
normal=$(tput sgr0)
# printf '%s\n' "${normal}User = ${USER}; platform = ${HOSTNAME}; $(date); running ${core}${bold}vim.sh${normal}"
printf '%s\n' "$(date), running \${core}${bold}vim.sh${normal}"

alias   v='vi '${vol}${bash_file}
alias  vc='vi '${ccs2}'/core_scripts/master'
alias  vm='vi makefile'
alias  vM='vi Makefile'
alias vcm='vi CMakeLists.txt'

alias contents_vim='echo "ALIAS v, vc, vm, vM, vcm"'
