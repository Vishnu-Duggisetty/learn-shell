#!/bin/bash

# This script demonstrates the use of environment variables in shell scripting.
# Environment variables are global variables that can be accessed by any process or script running in the shell.
# This custom env variables we need to be declared in the shell before running this script.
# Only for current user, decalare in this file ~/.bashrc
# if you want to declare for all users, declare file in this file path /etc/profile.d/<anyfilename>.sh

echo "Course Name: $COURSE"
echo "Course Duration: $DURATION"
echo "Course Instructor: $INSTRUCTOR"
echo "Learner Name: $LEARNER"