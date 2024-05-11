#!/bin/bash

GIT_USER_NAME='Satoshi'
GIT_USER_EMAIL='k.3104is@gmail.com'

CODENAME=$(cat /etc/lsb-release | grep DISTRIB_CODENAME | awk -F'=' '{print $2}')