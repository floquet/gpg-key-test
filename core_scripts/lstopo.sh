#! /bin/bash
bold=$(tput bold)
normal=$(tput sgr0)
# printf '%s\n' "${normal}User = ${USER}; platform = ${HOSTNAME}; $(date); running ${core}${bold}lstopo.sh${normal}"
printf '%s\n' "$(date), running \${core}${bold}lstopo.sh${normal}"

if ! [ -e ${id}${short_name}'_topology.pdf' ]
    then
        lstopo ${id}${short_name}'_topology.pdf'
fi
