#! /bin/bash
bold=$(tput bold)
normal=$(tput sgr0)
# printf '%s\n' "${normal}User = ${USER}; platform = ${HOSTNAME}; $(date); running ${core}${bold}disk.sh${normal}"
printf '%s\n' "$(date), running \${core}${bold}disk.sh${normal}"

alias disk_list='echo "listing of disk usage for $(pwd)"; du -csk * | sort -n'
alias disk_total='echo "total disk usage for $(pwd):";    du -shm'

alias contents_disk='echo "ALIAS disk_list, disk_total"'
