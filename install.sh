#! /usr/bin/env bash

# ignored entry
IGNORE=(".git",".gitignore","README.md","install.sh")

# funcitons

print_line () {
    len=$@
    echo -n "+"
    for i in $(seq $len); do echo -n '='; done;
    echo -n "+"

}

print_title () {
    str=$@
    len=$(( ${#str}+2 ))

    print_line $len
    echo; echo "| "$str" |";
    print_line $len
   
    echo; echo 
}

# start script 

echo; print_title "Link configuration files into '$HOME' directory" 

for entry in `ls -A`
do
    if [[ ! $IGNORE =~ $entry ]];
    then 
        if test -f $entry 
        then 
            ln -sv $entry $HOME
            # echo $HOME/$entry "->" $entry
        fi
    fi
done

echo; print_title "Link application files into '$HOME/.config' directory"

for entry in `ls -A config`
do
    ln -sv $entry $HOME/.config
    # echo $HOME/.config/$entry "->" $entry
done


echo; print_title "Installation completed!"
