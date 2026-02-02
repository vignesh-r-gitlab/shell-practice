#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "please run the script with root user"
    exit 1

else
    echo "installing nginx"
    dnf install nginx -y

fi

if [ $? -ne 0 ]; then
    echo "installation......failure"

else

    echo "installation......success"
fi
