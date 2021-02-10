#!/bin/bash
Component=Frontend
echo -e  "[\e[1;32mINFO\e[0m] [\e[1;35m${Component}\e[0m] [\e[1;36m$(date "+%F %T")\e[0m] \e[47;30mSetup Nginx....\e[0m"
echo -e  "[\e[1;32mINFO\e[0m] [\e[1;35m${Component}\e[0m] [\e[1;36m$(date "+%F %T")\e[0m] \e[47;30mInstalling Nginx....\e[0m"
echo -e  "[\e[32mSUCCESS\e[0m] [\e[1;35m${Component}\e[0m] [\e[1;36m$(date "+%F %T")\e[0m] \e[1;32mNginx installed successfully\e[0m"
echo -e   "[\e[31mFAIL\e[0m] [\e[1;31m${Component}\e[0m] [\e[1;31m$(date "+%F %T")\e[0m] \e[1;31mNginx installation failed \e[0m"