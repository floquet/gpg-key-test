#! /bin/bash
bold=$(tput bold)
normal=$(tput sgr0)
# printf '%s\n' "${normal}User = ${USER}; platform = ${HOSTNAME}; $(date); running ${core}${bold}git.sh${normal}"
printf '%s\n' "$(date), running \${core}${bold}git.sh${normal}"

# http://stackoverflow.com/questions/1125968/how-to-force-git-pull-to-overwrite-local-files
alias overwrite='git reset --hard HEAD'

# https://stackoverflow.com/questions/783811/getting-git-to-work-with-a-proxy-server
#alias get_git_proxies='echo "http proxy: "; git config --global --get http.proxy; echo "https proxy: "; git config --global --get https.proxy'
alias set_git_proxies='git config --global http.proxy http://proxyout.lanl.gov:8080; git config --global https.proxy http://proxyout.lanl.gov:8080'

alias mothership='git remote show origin'

# # F U N C T I O N S

function dantopa(){
  git config --global user.name "Daniel Topa"
  git config --global user.email dantopa@lanl.gov
  git config --global push.default simple
  git config --global color.ui true
  git config --global rerere.enabled true
}

function get_git_proxies(){
  echo 'http proxy: '
  git config --global --get http.proxy
  echo 'https proxy: '
  git config --global --get https.proxy
}

function get_git_listing(){
  git ls-files $1
}
