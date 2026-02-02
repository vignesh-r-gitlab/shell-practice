#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "please run the script with root user"
    exit 1
fi

VALIDATE(){

if [ $1 -ne 0 ]; then
    echo "$2.....failure "
    exit 1
else
    echo "$2.....success"
fi
}

dnf install nginx -y
VALIDATE $? "installation is"

dnf install mysql -y
VALIDATE $? "installation is"

dnf install nodejs -y
VALIDATE $? "installation is"
