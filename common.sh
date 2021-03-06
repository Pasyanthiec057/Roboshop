#!/bin/bash


Info(){
  echo -e "[\e[1;32mINFO\e[0m]  [\e[1;35m${Component}\e[0m] [\e[1;36m$(date "+%F %T")\e[0m] \e[47;30m$1....\e[0m"
}
Success(){
  echo -e  "[\e[1;32mSUCC\e[0m] [\e[1;35m${Component}\e[0m] [\e[1;36m$(date "+%F %T")\e[0m] \e[1;32m$1  success\e[0m"
}
Fail(){
  echo -e  "[\e[1;31mFAIL\e[0m  [\e[1;31m${Component}\e[0m] [\e[1;31m$(date "+%F %T")\e[0m] \e[1;31m$1  failed \e[0m"
}

Out_Path=/tmp/rob.log
rm -f $Out_Path

User_Id=$(id -u)
case $User_Id in
  0)
        true
    ;;
  *)
    echo -e "\e[31mYou have to a root user to perform this operation\e[0m...."
    exit 1
    ;;
esac

Res(){
  case $1 in
    0)
      Success "$2"
      ;;
    *)
      Fail "$2"
      ;;
esac
}

Download(){
  curl -s -o /tmp/${Component}.zip $1 &>> $Out_Path
}
