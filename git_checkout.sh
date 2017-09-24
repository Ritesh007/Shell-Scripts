#!/bin/bash
########################################################
#Creates a repo in github
#Clones the repo onto your local and switches to the specific branch
#Next step is to make the required changes to the code you checkedout
#######################################################

#variables
read -p "Enter your github username ->" username
read -p "Enter your repo name which you want to create or to which you want to commit ->" repo
read -p "Do you want to create a new branch or not (True or False)->" decision
read -p "Enter branch name you want to commit to new/old->" branch_name 
#create a repo in github
curl -u "$username" https://api.github.com/user/repos -d "{\"name\":\"$repo\"}"

git init
git clone https://github.com/${username}/${repo}.git

if [[ ${decision} == "True" ]];then
git checkout -b ${branch_name}
else
git checkout ${branch_name}
fi




