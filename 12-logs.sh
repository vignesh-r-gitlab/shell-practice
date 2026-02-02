#!/bin/bash

USERID=$(id -u)
LOG_DIR="/var/log/shell-script"
LOG_FILE="/var/log/shell-script/$0.log"


if [ $USERID -ne 0 ]; then
    echo "please execute script with root user"
    exit 1
fi

mkdir -p $LOG_DIR

VALIDATE(){

if [ $1 -ne 0 ]; then 
    echo "$2".....failure   | tee -a $LOG_FILE
else
    echo "$2".....success   | tee -a $LOG_FILE
fi
}

dnf install nginx -y
VALIDATE $? "nginx installation is" 

dnf install mysql -y 
VALIDATE $? "mysql installation is"

dnf install nodejs -y
VALIDATE $? "nodejs installation is"


