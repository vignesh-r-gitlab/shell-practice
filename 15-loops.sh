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
    echo "$2......failure"  | tee -a $LOG_FILE
    exit 1
else
    echo "$2.....success"   | tee -a $LOG_FILE
fi
}


for package in $@
do 
    dnf list installed $package     | tee -a $LOG_FILE
    if [ $? -ne 0 ]; then
    dnf install $package -y         | tee -a $LOG_FILE
    VALIDATE $? "$package installation is"
else
    echo "package already installed"
done