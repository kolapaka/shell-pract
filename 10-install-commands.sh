#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]
then
echo "error: : please ru this script with root access"
else
echo "you are running with root acess"
fi
dnf install mysql -y