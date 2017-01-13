#!/bin/sh

echo $'\e[37m======================\e[0m'
echo $'\e[37mLet\'s start setup!!\e[0m'
echo $'\e[37m======================\e[0m'

# make directory
echo $'\e[37mstart make Code directory\e[0m'
mkdir -p "$HOME/Code/mymac-setup"

# install homebrew
echo $'\e[37mstart homebrew install\e[0m'
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install packages
echo $'\e[37mstart install packages\e[0m'
cd "$HOME/Code/mymac-setup"
ansible-playbook "./ansible/playbook.yml" -i "./ansible/hosts"

echo $'\e[37m===============================\e[0m'
echo $'\e[37mCongraturations!! All Complete!'
echo $'\e[37m===============================\e[0m'
