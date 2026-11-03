#!/bin/bash

user_id=$(id -u)
folder_name="/var/logs/shell-practice"
file_name=${folder_name}/${0}.log

if [ $user_id -ne 0 ]; then
    echo "You are not root user, Please run the script as root user"
    exit 1
fi

mkdir -p ${folder_name}

validate() {
    if [ $1 -ne 0 ]; then 
        echo "$2 .. FAILED" &>> ${file_name}
        exit 1
    else 
        echo "$2 .. SUCCESS" &>> ${file_name}
    fi
}

for package in "$@"
    do 
        
        dnf list installed ${package}
        if[ $? -ne 0 ]; then
            echo "Start ${package} pkg install at: $(date +"%F %T")" &>> ${file_name}
            dnf install ${package}
            validate $? "${package} installation"
            echo "End ${package} pkg install at: $(date +"%F %T")" &>> ${file_name}
        else
            echo "${package} pkg is already installed, skipping installation" &>> ${file_name}
        fi
    done

echo "========Script completed successfully==========" &>> ${file_name}