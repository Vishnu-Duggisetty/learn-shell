#!/bin/bash

user_id=$(id -u)
if [ $user_id -ne 0 ]; then 
    echo "You are not root user, Please run the script as root user"
    exit 1
fi

validate() {
    if [ $1 -ne 0 ]; then
        echo "$2 .. FAILED"
        exit 1
    else 
        echo "$2 .. SUCCESS"
    fi
}

for package in $@ 
    do
        echo "Start Install ${package} package:: $(date +%F %T)"
        dnf install ${package} -y
        validate $? "${package} installation"
        echo "End Install ${package} package:: $(date +%F %T)"
    done

echo "Script completed successfully"