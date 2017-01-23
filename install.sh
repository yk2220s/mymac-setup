#!/bin/sh

echo $'\e[37m======================\e[0m'
echo $'\e[37mLet\'s start setup!!\e[0m'
echo $'\e[37m======================\e[0m'

# install xcode cli tool
echo $'\e[37mstart xcode cli tool install\e[0m'
xcode-select --install

# install homebrew
echo $'\e[37mstart homebrew install\e[0m'
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install homebrew
echo $'\e[37mstart ansible install\e[0m'
brew install ansible

# install packages
echo $'\e[37mstart install packages\e[0m'
ansible-playbook "./ansible/playbook.yml" -i "./ansible/hosts"

echo $'\e[37m===============================\e[0m'
echo $'\e[37mCongraturations!! All Complete!'
echo $'\e[37m===============================\e[0m'
