#!/bin/bash

for dotfile in ~/.dotfiles/*; do
    [ -d $dotfile ] && continue
    basename=`basename $dotfile`

    if [ $basename != "README.md" -a $basename != "setup.sh" ]; then
        printf '%-64s' "Linking $dotfile to ~/.$basename "
        ln -s -f $dotfile ~/.${basename} 2>/dev/null
        RETVAL=$?
        if [ $RETVAL == 0 ]; then
            tput setaf 2
            echo -n "[ Success ]"
        else
            tput setaf 1
            echo -n "[ Failure ]"
        fi

        tput sgr0
        echo
    fi
done
