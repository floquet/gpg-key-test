#! /bin/bash
bold=$(tput bold)
normal=$(tput sgr0)
# printf '%s\n' "${normal}User = ${USER}; platform = ${HOSTNAME}; $(date); running ${core}${bold}master.sh${normal}"
printf '%s\n' "$(date), running \${core}${bold}master.sh${normal}"

# #   E X P O R T
export os="$(tr [A-Z] [a-z] <<< "$(uname)")" # operating system, lower case

# #   A L I A S
alias lss='ls -alh'
alias myprompt='export PS1='\''\[\033[00;35m\]\u\[\033[00m\]@\[\033[00;35m\]\H\[\033[00m\]:\[\033[00;33m\]\W\[\033[00m\] $\033[00;36m '\'''
alias sr='source '${vol}${bash_file}  # source this bash file
alias now='cd; pwd'
alias ep='echo ${PATH}'


# https://www.howtoforge.com/tutorial/linux-xargs-command/
# find -name "*.txt" | xargs grep "abc"

# # S C R I P T S
source ${core}'gcc.sh'
source ${core}'git.sh'
source ${core}'pbs.sh'
source ${core}'ssh.sh'
source ${core}'vim.sh'
source ${core}'cmake.sh'
source ${core}'fortran.sh'
source ${core}'bookmarks.sh'

# information routines
source ${core}'disk.sh'
source ${core}'alias.sh'
source ${core}'spack.sh'
source ${core}'modules.sh'
source ${core}'proxies.sh'
source ${core}'teamcity.sh'
source ${core}'environment.sh'

if [ "${os}" = "darwin" ]
then
  source ${core}'apple.sh'
  source ${core}'darwin.sh'
  source ${core}'macports.sh'
else
  source ${core}'info.sh'
  source ${core}'slurm.sh'
  if ! [[ ${compare} == "cc" ]]; then
    source ${core}'lstopo.sh' # ccs machines don't have lstopo
  fi
  if [[ ${compare} == "tt" ]]; then
    source ${core}'knl.sh' # only trinitite has KNL
  fi
fi

# # C O P Y
cp ${vol}${bash_file} ${id}'/'${bash_file}
cp ~/.vimrc     ${id}'/'.
cp ~/.gitconfig ${id}'/'.

# http://unix.stackexchange.com/questions/177572/how-to-rename-terminal-tab-title-in-gnome-terminal
PROMPT_COMMAND='echo -ne "\033]0;${host_name}\007"'
myprompt  # # Linux prompt
