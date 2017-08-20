#! /bin/bash
bold=$(tput bold)
normal=$(tput sgr0)
# printf '%s\n' "${normal}User = ${USER}; platform = ${HOSTNAME}; $(date); running ${core}${bold}slurm.sh${normal}"
printf '%s\n' "$(date), running \${core}${bold}slurm.sh${normal}"

# #   A L I A S
alias grab10='salloc -t 00:10:00 -N 2 --qos=interactive'
alias grab60='salloc -t 01:00:00 -N 2 --qos=interactive'
alias grabmany='salloc -t 01:00:00 -N 16 --qos=interactive'

# # http://hpcfaq.lanl.gov/faqs/view/58
alias sqrun='squeue -o "%.7i %.8Q %.9P %.10u %.16a %.12j %.9B %.6C %.12L %S" -S "L" -t R'
alias sqpend='squeue -o "%.7i %.8Q %.10u %.12a %.9P %.10j %.6C %.12S %.12L %.r" -t PD'
alias sqother='squeue -o "%.7i %.10u %.12T %.6C %10l %R" -S "-T" -t S,CG,CD,CF,CA,F,TO,PR,NF'
alias sq='(echo RUNNING:;sqrun;echo $'\n'"PENDING:";sqpend;echo $'\n'"Other";sqother)'
alias sqall='squeue -o "%.7i %.10u %.8T %.6C %.12L %S" -S "-t,-L"'
# an alternate 'sqpend' with more information
alias pend='squeue -O "jobid:.7,prioritylong:.10,username:.10,account:.16,qos:.12,partition:.14,numnodes:.7,timelimit:.14,starttime:.22,reason:.20" -t PD'
alias showqos='sacctmgr show qos format=name,priority'
alias showacct='sacctmgr show account format=descr'
alias showuser='(test -n "\!*" && sacctmgr list assoc user=\!* format=Cluster,Account,Partition,QOS%40) || echo No User Specified'
alias suser='(test -n "\!*" && sacct -u \!* --format=JobID,Priority,JobName,Account,QOS,Partition,Start,Elapsed,State) || echo No User specified'
alias sreason='squeue -o "%.7i %.10u %.10T %r" -t PD,S,CG,CD,CF,CA,F,TO,PR,NF -j \!*'
alias killme='scancel -u ${USER}'
alias idle='sinfo -l | grep idle'

# https://hpc.lanl.gov/KNL_primer#compile
alias scheckmem='sinfo -o "%30N %18b %50f"'
alias sactive='sinfo --format="%10P %25N %.35f %.6a %.10A"'

alias contents_slurm='ALIAS grab10, grab60, grabmany, sqrun, sqpend, sqother, sq, sqall, pend, showqos, showacct, showuser, suser, sreason, killme, idle, scheckmem, sactive'

