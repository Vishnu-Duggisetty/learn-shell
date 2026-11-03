#!/bin/bash

user_id=$(id -u)
folder_name="/var/logs/shell-practice"
file_name="${folder_name}/${0}.log"

if [ $user_id -ne 0 ]; then
    echo "You are not root user, Please run the script as root user"
    exit 1
fi

mkdir -p ${folder_name}
set -o pipefail

validate() {
    if [ $1 -ne 0 ]; then
        echo "$2 .. FAILED" &>> ${file_name}
        exit 1
    else 
        echo "$2 .. SUCCESS" &>> ${file_name}
    fi
}

for package in $@ 
    do 
        echo "Start Install ${package} package:: $(date +"%F %T")" &>> ${file_name}
        dnf install ${package} -y | tee -a ${file_name}
        validate $? "${package} installation"
        echo "End Install ${package} package:: $(date +"%F %T")" &>> ${file_name}
    done

echo "========Script completed successfully==========" &>> ${file_name}