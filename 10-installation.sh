#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "please run the script with root user"
    exit 1

fi
    echo "installing nginx"
    dnf install nginx -y

if [ $? -ne 0 ]; then
    echo "installation......failure"
    exit 1
else

    echo "installation......success"
fi
