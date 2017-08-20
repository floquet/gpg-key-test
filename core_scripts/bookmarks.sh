#! /bin/bash
bold=$(tput bold)
normal=$(tput sgr0)
# printf '%s\n' "${normal}User = ${USER}; platform = ${HOSTNAME}; $(date); running \${core}${bold}bookmarks.sh${normal}"
printf '%s\n' "$(date), running \${core}${bold}bookmarks.sh${normal}"

# # A L I A S
alias home='cd ~;pwd'

# # GitLab LANL
alias gl='cd '${gitlab}                    # ${gitlab} set in ${bash_file}
alias cdf='gl; cd '${fortran}'; cd ccs2'

# # bitbucket
alias bb='cd '${bitbucket}                 # ${bitbucket}set in ${bash_file}
alias ccs2='cd '${ccs2}                    # ${ccs2}set in ${bash_file}

# # fortran
alias  cdf='cd '${gitlab}'fortran/'
alias cdef='cd '${gitlab}'emergency_fortran/'

alias cdefd='cdef; cd demo/; pwd'
alias cdefo='cdef; cd oom/;  pwd'
alias cdefp='cdef; cd pi/;   pwd'

# # scratch
alias cds='cd /net/scratch1/dantopa/; pwd'
