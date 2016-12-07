

alias grep='grep --color=auto'
alias ...='../../'
alias D='date +"%Y%m%d_%H%M%S"'
alias ls='ls --color=auto'
export td_fields='(db_txn_log_id|deal_id|uuid)'

export myseds='s/uuid/\x1b[31m&\x1b[0m/gi;s/ostatus/\x1b[31m&\x1b[0m/gi;s/dealId/\x1b[31m&\x1b[0m/gi;s/stepid/\x1b[31m&\x1b[0m/gi;'

sedwb='\x1b[7m&\x1b[0m'
export sedwb

alias gg='git log --oneline --abbrev-commit --branches=* --graph --decorate --color'
alias D='date +"%Y%m%d_%H%M%S"'

function cc() {
   touch $(D).txt
   git add --all
   git commit -m $1:
}



function Mrestart {
    ./bin/mule stop
    sleep 2
    ./bin/mule start
    sleep 1
    tail -f $1 #| perl -pe 's/(.{80})/$1\n\t/g'
}

function goto_bpt {

  case "$1" in

  api) cd ~/buyer-proceeds/environments/dev/otp-api/mule-standalone-3.7.0/
        ;;
  ms) cd ~/buyer-proceeds/environments/dev/ms
        ;;
  edmi) cd ~/buyer-proceeds/environments/dev/edmi/edmi-connectivity-test-mule-standalone/
        ;;
  *) echo "Not valid location"
  esac

  ls;

}

function goto_td {

  case "$1" in

  api) cd ~/CB/TD_SIT/api/mule-standalone-3.7.0/
        ;;
  ms) cd ~/CB/TD_SIT/ms/
        ;;
  log) cd /data/logs/cb/td/api
        ;;
  *) echo "Not valid location"
  esac

  ls;

}

function sed_comm_object_mark {

    field=$1
    if [ -z "$field" ]
        then field='error'
    fi
    query='s/.'$field'...[^"]*["]/\x1b[7m&\x1b[0m/gi;s/.errors..\[.*\]/\x1b[91m&\x1b[0m/gi;'
    echo $query
    sed -r -e $query
}
