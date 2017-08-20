#! /bin/bash
bold=$(tput bold)
normal=$(tput sgr0)
# printf '%s\n' "${normal}User = ${USER}; platform = ${HOSTNAME}; $(date); running ${core}${bold}spack.sh${normal}"
printf '%s\n' "$(date), running \${core}${bold}spack.sh${normal}"

# #   E X P O R T
# export SPACK_ROOT=${vol}'Applications/spack/'
# export SPACK_ROOT=${vol}'topa_sandbox/spack/'
# export PATH=${SPACK_ROOT}'bin':${PATH}

#export spack_head="echo $(uname) | tr '[:upper:]' '[:lower:]'"

 # https://stackoverflow.com/questions/2264428/converting-string-to-lower-case-in-bash
export spack_mirror_scratch='/scratch/vendors/spack.mirror'
export spack_mirror_draco='/usr/projects/draco/vendors/spack.mirror'

# #  A L I A S
alias sp='cd ${SPACK_ROOT}'
alias spack_ssh='git clone git@github.com:LLNL/spack.git'
alias spack_https='git clone https://github.com/LLNL/spack.git'
alias spack_try='show_proxies; echo ""; echo "git clone git@github.com:LLNL/spack.git"; spack_ssh; echo " "; echo $'\n'"git clone https://github.com/LLNL/spack.git"; spack_https'
alias sil='echo "spack list = "; spack list'
alias sml='echo "spack mirror list = "; spack mirror list'

alias svicompilers='vi ${vol}/.spack/${spack_head}compilers.yaml'    # edit compiler list
alias   svimodules='vi ${vol}/.spack/${spack_head}modules.yaml'      # edit modules list
alias   svimirrors='vi ${vol}/.spack/${spack_head}mirrors.yaml'      # edit mirrors list

alias spack_here='export SPACK_ROOT='$(pwd)
alias spack_shell='. ${SPACK_ROOT}/share/spack/setup-env.sh'
alias spack_set='spack_here;spack_shell'

alias spack_init='export SPACK_ROOT=$(pwd); export PATH=${SPACK_ROOT}'bin':${PATH}'
alias draco='export SPACK_ROOT=${scratch}vendors/spack.20170814; cd ${SPACK_ROOT}; spack_shell; newgrp draco; umask 002'

function spsp(){
  echo "spack find $1"
  spack find $1;
  echo "spack versions $1"
  spack versions $1
}

function gccer() {
  echo "spack install $1 $2 $3 % gcc @ 4.8.5"
  spack install $1 $2 $3 % gcc @ 4.8.5
}

function both() {
  echo "spack install $1 $2 $3 ^openmpi @ 1.10.5 % gcc @ $4"
        spack install $1 $2 $3 ^openmpi @ 1.10.5 % gcc @ $4

  echo "spack install $1 $2 $3 ^openmpi @ 2.1.1 % gcc @ $4"
        spack install $1 $2 $3 ^openmpi @ 2.1.1 % gcc @ $4
}

function myclanger() {
  echo "spack install $1 $2 $3 ^openmpi @ 2.1.1 % clang @ 4.0.0"
        spack install $1 $2 $3 ^openmpi @ 2.1.1 % clang @ 4.0.0

  echo "spack install $1 $2 $3 ^openmpi @ 1.10.5 % clang @ 4.0.0"
        spack install $1 $2 $3 ^openmpi @ 1.10.5 % clang @ 4.0.0
}

function ngccer() {
  echo "spack install $1 $2 $3 % gcc @ 7.1.0"
  spack install $1 $2 $3 % gcc @ 7.1.0
}

function clanger() {
  echo "spack install $1 $2 $3 % clang @ 4.0.0"
        spack install $1 $2 $3 % clang @ 4.0.0
}

function test() {
  echo "spack install $1 @ $2 % clang @ 4.0.0 +mpi ^ openmpi @ 2.1.1"
        spack install $1 @ $2 % clang @ 4.0.0 +mpi ^ openmpi @ 2.1.1  &

  echo "spack install $1 @ $2 % clang @ 4.0.0 +mpi ^ openmpi @ 1.10.5"
        spack install $1 @ $2 % clang @ 4.0.0 +mpi ^ openmpi @ 1.10.5  &

  wait
}

alias contents_spack='echo "ALIAS  sil sml sp spack_here spack_https spack_init spack_set spack_shell spack_ssh spack_try svicompilers svimodules svimirrors"; echo "EXPORT spack_mirror_draco spack_mirror_scratch"; echo "FUNCTION  spsp clanger gccer ngccer"'
