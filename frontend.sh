#!/bin/bash

Component=Frontend


source ./common.sh


Info "Setup frontend component"
Info "Installing Nginx"
yum install nginx -y &> "$Out_Path"
Res $? "Nginx installation"

Info "Nginx Service Startup"
systemctl enable nginx
systemctl restart nginx
Res $? "Nginx Service Startup"

Info "Downloading Artifacts"
Download "https://dev.azure.com/DevOps-Batches/f4b641c1-99db-46d1-8110-5c6c24ce2fb9/_apis/git/repositories/a781da9c-8fca-4605-8928-53c962282b74/items?path=%2F&versionDescriptor%5BversionOptions%5D=0&versionDescriptor%5BversionType%5D=0&versionDescriptor%5Bversion%5D=master&resolveLfs=true&%24format=zip&api-version=5.0&download=true"
Res $? "Downloading Artifacts"

# cd /usr/share/nginx/html
# rm -rf *
# unzip /tmp/frontend.zip
# mv static/* .
# rm -rf static README.md
# mv localhost.conf /etc/nginx/default.d/roboshop.conf

Info "Deploy in Nginx Default Location"
rm -rf /usr/share/nginx/html/*
unzip /tmp/Frontend.zip &>>$Out_Path
mv static/* .
rm -rf static README.md
mv localhost.conf /etc/nginx/default.d/roboshop.conf
Res $? "Deployment"


