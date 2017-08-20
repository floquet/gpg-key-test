#! /bin/bash
bold=$(tput bold)
normal=$(tput sgr0)
# printf '%s\n' "${normal}User = ${USER}; platform = ${HOSTNAME}; $(date); running ${core}${bold}environment.sh${normal}"
printf '%s\n' "$(date), running \${core}${bold}environment.sh${normal}"

export my_log=${id}'/environment_variables.txt'

echo "environment variables" > ${my_log}
date >> ${my_log}

echo "" >> ${my_log}
env >> ${my_log}

export my_log=${id}'/uname_variables.txt'
echo "uname variables" > ${my_log}
date >> ${my_log}

echo "" >> ${my_log}
uname -a >> ${my_log}

alias contents_environment='echo "write list of environment commands to environment_variables.txt, list of uname variables to uname_variables.txt"'
