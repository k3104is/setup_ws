#!/bin/bash


sudo apt-get update
sudo apt-get -y install git

git config --global user.name ${GIT_USER_NAME}
git config --global user.email=${GIT_USER_EMAIL}