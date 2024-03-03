#!/bin/bash
adduser git
read -p "Enter the name of the repository " dir_name
cd /home/git
mkdir .ssh 
chmod 700 .ssh
touch ~/.ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys
mkdir -p /srv/git/$dir_name.git
cd /srv/git/$dir_name.git
git init --bare
