#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]
then
echo "error: : please run this  with root acess"
exit 4 # give other than 0 upto 127
else
echo "you are running with root acess"
fi
dnf list installed mysql

if [ $? -ne 0 ]
then 
echo "mysql not installed"
dnf install mysql -y
if [ $? eq 0 ]
then
echo "installing mysql is sucess"
else
echo "installing mysql is failed"
exti 1
fi
else 
echo "mysql alredy installed nohing to do"
exit 1
fi
dnf install mysql -y
then
echo "instlling mysql sucess"
else
echo installing mysql failure"
exit 1