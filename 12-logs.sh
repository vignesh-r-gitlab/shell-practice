#!/bin/bash

USERID=$(id -u)
LOG-DIR="/var/log/shell-script"
LOG-FILE="/var/log/shell-script/$0.log"


if [ $USERID -ne 0 ]; then
    echo "please execute script with root user"
    exit 1
fi

mkdir -p $LOG-DIR

VALIDATE(){

if [ $1 -ne 0 ]; then 
    echo "$2".....failure
else
    echo "$2".....success
fi
}

dnf install nginx -y
VALIDATE $? "nginx installation is" 