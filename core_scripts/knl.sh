##! /bin/bash
bold=$(tput bold)
normal=$(tput sgr0)
# printf '%s\n' "${normal}User = ${USER}; platform = ${HOSTNAME}; $(date); running ${core}${bold}knl.sh${normal}"
printf '%s\n' "$(date), running \${core}${bold}knl.sh${normal}"

# https://hpc.lanl.gov/KNL_primer#compile
alias go_knl="module swap craype-haswell craype-mic-knl"
