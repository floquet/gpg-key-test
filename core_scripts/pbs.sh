#! /bin/bash
bold=$(tput bold)
normal=$(tput sgr0)
# printf '%s\n' "${normal}User = ${USER}; platform = ${HOSTNAME}; $(date); running ${core}${bold}pbs.sh${normal}"
printf '%s\n' "$(date), running \${core}${bold}pbs.sh${normal}"

alias qv='qview -u dantopa'
alias  q='qstat | grep dantopa'
alias  p='ps aux | grep dantopa'

alias slayer='ps aux | grep dantopa | grep ssh-agent | awk ''{print $2}'' | xargs kill'
