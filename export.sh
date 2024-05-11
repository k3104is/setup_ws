#!/bin/bash

CODENAME=$(cat /etc/lsb-release | grep DISTRIB_CODENAME | awk -F'=' '{print $2}')

# git_ws
GIT_USER_NAME='Satoshi'
GIT_USER_EMAIL='k.3104is@gmail.com'

# cron_ws
CRON_BACKUP_DIR='/mnt/nas1'