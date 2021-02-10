#!/bin/bash
Component=Mongo

source  Roboshop/common.sh

Info "Setup Mongo"
Info "Installing Mongo"
#echo -e  "[\e[1;32mINFO\e[0m] [\e[1;35m${Component}\e[0m] [\e[1;36m$(date "+%F %T")\e[0m] \e[47;30mSetup ${Component}....\e[0m"
#echo -e  "[\e[1;32mINFO\e[0m] [\e[1;35m${Component}\e[0m] [\e[1;36m$(date "+%F %T")\e[0m] \e[47;30mInstalling ${Component}....\e[0m"
#echo -e  "[\e[32mSUCCESS\e[0m][\e[1;35m${Component}\e[0m] [\e[1;36m$(date "+%F %T")\e[0m] \e[1;32m${Component} installed successfully\e[0m"
#echo -e  "[\e[31mFAIL\e[0m]   [\e[1;31m${Component}\e[0m] [\e[1;31m$(date "+%F %T")\e[0m] \e[1;31m${Component} installation failed \e[0m"