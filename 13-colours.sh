#!/bin/bash



USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ $USERID -ne 0 ]
then
    echo -e $R "ERROR:: Please run this script with root access"
    exit 1 #give other than 0 upto 127
else
    echo -e $Y "You are running with root access"
fi

# validate functions takes input as exit status, what command they tried to install
VALIDATE(){
    if [ $1 -eq 0 ]
    then
        echo -e $G "Installing $2 is ... SUCCESS"
    else
        echo -e $R "Installing $2 is ... FAILURE"
        exit 1
    fi
}

dnf list installed mysql
if [ $? -ne 0 ]
then
    echo -e $Y"MySQL is not installed... going to install it"
    dnf install mysql -y
    VALIDATE $? "MySQL"
else
    echo -e $Y "MySQL is already installed...Nothing to do"
fi

dnf list installed python3
if [ $? -ne 0 ]
then
    echo -e $Y "python3 is not installed... going to install it"
    dnf install python3 -y
    VALIDATE $? "python3"
else
    echo -e $Y "python3 is already installed...Nothing to do"
fi

dnf list installed nginx
if [ $? -ne 0 ]
then
    echo -e $Y "nginx is not installed... going to install it"
    dnf install nginx -y
    VALIDATE $? "nginx"
else
    echo -e $Y "nginx is already installed...Nothing to do"
fi