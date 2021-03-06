#! /bin/bash

echo -e "What do you want to do ? \n 1 -> Push into repository\n 2 -> Delete a file from repository"
read q1
if [ $q1 == 1 ]
then
    read -p "Are you pushing into git for a new project ? [Y/N/y/n] " a1
    git add .
    echo -e "\nEnter Commit Statement : "
    read inp1
    git commit -m "$inp1"
    if [[ $a1 == [yY] ]]
    then
        echo -e "\nEnter local name for  git repository : "
        read inp2
        echo -e "\nEnter URL Link for git repository : " 
        read inp3
        git remote add "$inp2" "$inp3"
        git push "$inp2" master
    else
        echo -e "\nEnter name of git repository : "
        read inp12
        echo -e "\nEnter the branch name : (default master) "
        read inp13
        if [ $inp13 == "" ]
        then
            $inp13 = "master"
        fi
        git pull $inp12 $inp13
        git push --set-upstream $inp12 $inp13
    fi
fi
if [ $q1 == 2 ]
then
    echo "Enter filename : "
    read a11
    git rm -rf $a11
    git commit -m  "Removed $a11 file"
    echo -e "\nEnter name of git repository :" 
    read a12
    git pull
    git push $a12 master 
fi