#! /bin/bash
bold=$(tput bold)
normal=$(tput sgr0)
# printf '%s\n' "${normal}User = ${USER}; platform = ${HOSTNAME}; $(date); running ${core}${bold}info.sh${normal}"
printf '%s\n' "$(date), running \${core}${bold}info.sh${normal}"

# # cpu info
export my_log=${id}"info_cpu.txt"
export my_log_arXive=${my_log}
alias __contents_cpu='echo "write proc/cpuinfo to \${my_log} = ${my_log_arXive}"'

echo "cat /proc/cpuinfo for "${host_name} > ${my_log}
date >>  ${my_log}
echo "" >>  ${my_log}
cat /proc/cpuinfo >> ${my_log}

# # mem info
export my_log=${id}"info_mem.txt"
alias __contents_mem='echo "write proc/meminfo to \${my_log} = ${my_log}"'

echo "cat /proc/mem info for "${host_name} > ${my_log}
date >>  ${my_log}
echo "" >>  ${my_log}
cat /proc/meminfo >> ${my_log}

alias contents_info='__contents_cpu; __contents_mem'

