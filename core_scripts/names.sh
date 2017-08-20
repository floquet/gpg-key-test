#! /bin/bash
bold=$(tput bold)
normal=$(tput sgr0)
# printf '%s\n' "${normal}User = ${USER}; platform = ${HOSTNAME}; $(date); running ${core}${bold}names.sh${normal}"
printf '%s\n' "$(date), running \${core}${bold}names.sh${normal}"

set compare=${HOST:0:2}
echo "compare = "${compare}
if [[ $compare} == "nu" ]] ; then ${hostname}="null_space"; else echo 0; fi
