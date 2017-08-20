#! /bin/bash
bold=$(tput bold)
normal=$(tput sgr0)
# printf '%s\n' "${normal}User = ${USER}; platform = ${HOSTNAME}; $(date); running \${core}${bold}darwin.sh${normal}"
printf '%s\n' "$(date), running \${core}${bold}darwin.sh${normal}"

# https://discussions.apple.com/thread/7581737?start=0&tstart=0
# vshift+command+period toggles hidden files

# http://ianlunn.co.uk/articles/quickly-showhide-hidden-files-mac-os-x-mavericks/
alias macfiles_show='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias macfiles_hide='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
alias macfiles_remind='echo "to see invisible files: shift-command-."'

alias another_mathematica='open -n /Volumes/Macintosh HD/Application/Mathematica.app'

alias contents_darwin='echo "ALIAS macfiles_show, macfiles_hide, macfiles_remind, another_mathematica"'
