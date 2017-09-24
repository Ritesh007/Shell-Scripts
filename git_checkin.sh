#!/bin/bash
################################################
#Once your code changes are done you can use
#this script to checkin the code you changed
#to the repo you checkedout & to the branch
#you want to.
###############################################

read -p "Enter the path of the repo ->" path_repo

cd ${path_repo}

git add --all

read -p "Is the branch name you are going to enter in the next prompt is a new one (y or n) ->" decision
read -p "Enter the branch name ->" branch_name
if [[ ${decision} == "y" ]]; then
git checkout -b ${branch_name}
else
git chekout ${branch_name}
fi

read -p "Enter the commit message ->" message
git commit --all -m ${message}

git push origin ${branch_name} 


