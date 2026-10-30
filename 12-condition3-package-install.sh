#!/bin/bash

# Install nginx, myql pakgs
# root user check, if not exit
# Install status check, if not exit

userId=$(id -u)

if [ $userId -ne 0 ]; then
    echo "You are not root user, Please run the script as root user"
    exit 1
fi

dnf install nginx -y

if [ $? -eq 0 ]; then
    echo "Nginx installed successfully"
else
    echo "Nginx installation failed, Please check the logs"
    exit 1
fi

dnf install mysql -y

if [ $? -ne 0 ]; then
    echo "Mysql installation failed, Please check the logs"
    exit 1
else 
    echo "Mysql installed successfully"
fi

echo "Script completed successfully"