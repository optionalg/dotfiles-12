#!/bin/bash

DOTFILES=~/.dotfiles
SUCCESS="Success!"
FAILURE="Failed."

echo -n "Linking .bash_profile... "
ln -s -f ${DOTFILES}/bash_profile ~/.bash_profile 2>/dev/null
RETVAL=$?
[[ $RETVAL == 0 ]] && echo $SUCCESS || echo $FAILURE

echo -n "Linking .bashrc... "
ln -s -f ${DOTFILES}/bashrc ~/.bashrc 2>/dev/null
RETVAL=$?
[[ $RETVAL == 0 ]] && echo $SUCCESS || echo $FAILURE

echo -n "Linking .gitconfig... "
ln -s -f ${DOTFILES}/gitconfig ~/.gitconfig 2>/dev/null
RETVAL=$?
[[ $RETVAL == 0 ]] && echo $SUCCESS || echo $FAILURE

echo -n "Linking .vimrc... "
ln -s -f ${DOTFILES}/vimrc ~/.vimrc 2>/dev/null
RETVAL=$?
[[ $RETVAL == 0 ]] && echo $SUCCESS || echo $FAILURE
