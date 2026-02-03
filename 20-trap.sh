#!/bin/bash

set -e #ERR

trap 'echo "there is error in line number:$LINENO & in command $BASH_COMMAND"' ERR

USERID=$(id -u)
LOG_DIR="/var/log/shell-practice"
LOG_FILE="/var/log/shell-practice/$0.log"

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

# $R $G $Y $N

if [ $USERID -ne 0 ]; then
    echo -e "$R please run the script with root user $N"
    exit 1
fi

mkdir -p $LOG_DIR

VALIDATE(){
    if [ $1 -ne 0 ]; then
    echo -e "$2......$R failure $N"  | tee -a $LOG_FILE
    exit 1
else
    echo -e "$2.....$G success $N"   | tee -a $LOG_FILE
fi
}


for package in $@
do 
    dnf list installed $package     | tee -a $LOG_FILE
    if [ $? -ne 0 ]; then
    dnf install $package -y         | tee -a $LOG_FILE
    VALIDATE $? "$package installation is"
else
    echo -e "$G package already installed $N"
fi
done