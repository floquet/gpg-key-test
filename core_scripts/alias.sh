#! /bin/bash
bold=$(tput bold)
normal=$(tput sgr0)
printf '%s\n' "$(date), running \${core}${bold}alias.sh${normal}"

export my_log=${id}'alias_assignments.txt'

echo 'alias assignments on' ${host_name} > ${my_log}
date >> ${my_log}

echo "" >> ${my_log}
alias >> ${my_log}

alias contents_alias='echo "write list of alias commands to \${my_log} = ${my_log}"'

