#!/bin/bash

function update {
        local directory=$1
        local vcs=$2
        local command=$3
        
        echo -e "updating $(basename $directory) [$vcs]"
        
        (cd $directory && $command) || 
                #if failure
                echo -e "\e[00;31mFailed -> $dir\e[00m"
}

for dir in `ls $1`
do
        #git project
        if [ -d "$1/$dir" -a -d "$1/$dir/.git" ]
                then
                        update $1/$dir 'git' 'git svn rebase'
                        
        #svn project
        elif [ -d "$1/$dir" -a -d "$1/$dir/.svn" ]
                then
                        update $1/$dir 'svn' 'svn update'

        else 
            echo  "ignored $dir"
        fi                
done