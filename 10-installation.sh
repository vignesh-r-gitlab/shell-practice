#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "please run the script with root user"
    exit 1

fi
    echo "installing nginx"
    dnf install nginx -y

if [ $? -ne 0 ]; then
    echo "installation of nginx......failure"
    exit 1
else

    echo "installation of nginx......success"
fi

    dnf install mysql -y

if [ $? -ne 0 ]; then
    echo "installation of mysql.....failure"
    exit 1
else
    echo "installation of mysql.....success"
fi