#! /bin/bash
bold=$(tput bold)
normal=$(tput sgr0)
# printf '%s\n' "${normal}User = ${USER}; platform = ${HOSTNAME}; $(date); running ${core}${bold}ssh.sh${normal}"
printf '%s\n' "$(date), running \${core}${bold}ssh.sh${normal}"

# create an ssh key
# ssh-keygen -t rsa -C "dantopa@lanl.gov"

# view randomart
# ssh-keygen -lv -f ~/.ssh/id_rsa

# Mac
# cat ~/.ssh/id_rsa.pub | pbcopy

# ssh-keygen -t rsa -C "dantopa@lanl.gov" -b 4096

alias public_key='cat ~/.ssh/id_rsa.pub'

alias contents_ssh='echo "ALIAS public_key"'
