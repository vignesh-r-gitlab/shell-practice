#!/bin/bash

USERID=$(id -u)
LOG_DIR="/var/log/shell-practice"
LOG_FILE="/var/log/shell-practice/$0.log"

if [ $USERID -ne 0 ]; then
    echo "please run the script with root user"
    exit 1
fi

mkdir -p $LOG_DIR

VALIDATE(){
    if [ $1 -ne 0 ]; then
    echo "$2......failure"  &>> $LOG_FILE
    exit 1
else
    echo "$2.....success"   &>> $LOG_FILE
fi
}


for package in $@
do 
    dnf install $package -y &>> $LOG_FILE
    VALIDATE $? "$package installation is"
done