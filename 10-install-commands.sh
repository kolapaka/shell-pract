#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]
then
echo "error: : please run this  with root acess"
exit 4 # give other than 0 upto 127
else
echo "you are running with root acess"
fi
dnf install mysql -y
if [ $? -eq 0 ]
then 
echo "Installing mysql is success"
else
echo "fail to install"
exti 1
fi