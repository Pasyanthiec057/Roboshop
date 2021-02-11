#!/bin/bash

Component=Frontend


source ./common.sh


Info "Setup frontend component"
Info "Installing Nginx"
yum install nginx -y
Success "Nginx"
Fail "Nginx"