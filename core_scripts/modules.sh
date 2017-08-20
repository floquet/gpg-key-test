#! /bin/bash
bold=$(tput bold)
normal=$(tput sgr0)
# printf '%s\n' "${normal}User = ${USER}; platform = ${HOSTNAME}; $(date); running ${core}${bold}modules.sh${normal}"
printf '%s\n' "$(date), running \${core}${bold}modules.sh${normal}"

alias ml='module list'
alias ma='module available'

# dump available modules in a file
export my_log=${id}'/modules_available.txt'

echo "modules available " > ${my_log}
date >> ${my_log}

echo "" >> ${my_log}
module available >> ${my_log}  2>&1

# dump loaded modules in a file
export my_log=${id}'/modules_list.txt'

echo "module list" > ${my_log}
date >> ${my_log}

echo "" >> ${my_log}
module list >> ${my_log}  2>&1
