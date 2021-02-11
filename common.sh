#!/bin/bash

Info(){
  echo -e  "[\e[1;32mINFO\e[0m] [\e[1;35m${Component}\e[0m] [\e[1;36m$(date "+%F %T")\e[0m] \e[47;30m $1....\e[0m"
}
Success(){
echo -e  "[\e[32mSUCCESS\e[0m][\e[1;35m ${Component}\e[0m] [\e[1;36m$(date "+%F %T")\e[0m] \e[1;32m $1 installed successfully\e[0m"
}
Fail(){
echo -e  "[\e[31mFAIL\e[0m]   [\e[1;31m${Component}\e[0m] [\e[1;31m$(date "+%F %T")\e[0m] \e[1;31m $1 installation failed \e[0m"
}
User_Id=$(uid -u)
case $User_Id in
  0)
    echo "$User_Id"
    true
    ;;
  *)
    echo -e "\e[31mYou have to a root user to perform this operation\e[0m...."
    exit 1
    ;;
esac
