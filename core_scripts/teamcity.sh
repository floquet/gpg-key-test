#! /bin/bash
bold=$(tput bold)
normal=$(tput sgr0)
# printf '%s\n' "${normal}User = ${USER}; platform = ${HOSTNAME}; $(date); running ${core}${bold}teamcity.sh${normal}"
printf '%s\n' "$(date), running \${core}${bold}teamcity.sh${normal}"

# export JAVA_HOME=$(which javac)
# export TEAMCITY_HOME=/scratch/teamcity/TeamCity

alias gtc='cd $TEAMCITY_HOME; pwd' # TEAMCITY_HOME set in bashrc
alias tc_start='gtc; cd bin; pwd'

alias __jre='echo "${normal}${bold}jre version${normal}: " ; java  -version'
alias __jco='echo "${bold}java compiler version:${normal} "; javac -version'
alias __jho='echo "${bold}JAVA_HOME${normal} = "${JAVA_HOME}'
alias check_java='__jre; __jco; __jho'

alias __ljre='echo "${normal}${bold}jre location${normal}: " $(which java)'
alias __ljco='echo "${normal}${bold}java compiler location${normal}: " $(which javac)'
alias locate_java='__ljre; __ljco'

alias tcc_clone='git clone git@gitlab.lanl.gov:dantopa/TeamCity_coverage.git'
alias tcw_clone='git clone git@gitlab.lanl.gov:dantopa/TeamCity_World.git'
alias tce_clone='git clone git@gitlab.lanl.gov:dantopa/CuidadEquipo.git'
alias tcw_start_all='./TeamCity_01/bin/runAll.sh start; ./TeamCity_02/bin/runAll.sh start; ./TeamCity_03/bin/runAll.sh start'
alias  tcw_stop_all='./TeamCity_01/buildAgent/bin/agent.sh stop kill; ./TeamCity_02/buildAgent/bin/agent.sh stop kill; ./TeamCity_03/buildAgent/bin/agent.sh stop kill'

alias tcw_whoami1='sed -i -e ''s/whoami/''${dir_name}''/g'' TeamCity/buildAgent_ccs_1/conf/buildAgent.properties'
alias tcw_whoami2='sed -i -e ''s/whoami/''${dir_name}''/g'' TeamCity/buildAgent_ccs_2/conf/buildAgent.properties'
alias tcw_whoami3='sed -i -e ''s/whoami/''${dir_name}''/g'' TeamCity/buildAgent_ccs_3/conf/buildAgent.properties'
alias tcw_whoami='tcw_whoami1; tcw_whoami2; tcw_whoami3'
alias tcw_genesis='cd ${scratch}; mkdir gitlaboratory; cd gitlaboratory; tcw_clone; cd TeamCity_World/server_ccs-ts/; tcw_whoami'

alias clone_Production_test_codes='git clone git@gitlab.lanl.gov:dantopa/Production_test_codes.git'
alias   clone_Production_teamcity='git clone git@gitlab.lanl.gov:dantopa/Production_TeamCity46961.git'
alias   clone_Production_myAgents='git clone git@gitlab.lanl.gov:dantopa/Production_myAgents.git'
alias clone_Production='cd ${Production}; clone_Production_test_codes; clone_Production_teamcity; clone_Production_myAgents; pwd'
alias show_copy_example='echo "cp -a ../Production_myAgents/petaca3/buildAgent* ."'

alias reset_Production_directory='rm -rf Production; mkdir Production'
alias agents_start='./bin/runAll_ccs2.sh start'
alias agents_stop='./bin/runAll_ccs2.sh start'
alias agents_fix_permissions="chown --reference=runAll.sh runAll_ccs2.sh; chmod --reference=runAll.sh runAll_ccs2.sh"

# https://unix.stackexchange.com/questions/20645/clone-ownership-and-permissions-from-another-file
# chown --reference=runAll.sh runAll_ccs2.sh
# chmod --reference=runAll.sh runAll_ccs2.sh

alias contents_teamcity='echo "ALIAS gtc, check_java, clone_Production, agents_start, agents_stop, show_copy_example, reset_Production_directory, tc_start, tcw_clone, tcw_genesis, tcw_start_all, tcw_stop_all"'
