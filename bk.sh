#!/bin/bash
#########################################################
# SHELL UTILITY TO BACKUP FILES
# Usage - bk filename
# backsup the file in the same folder with date&time stamp
#########################################################

arg_1=$1

scp -p $PWD/$1 $PWD/$1.`date +"%F.%T"`