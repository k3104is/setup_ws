#!/bin/bash

export CODENAME=$(cat /etc/lsb-release | grep DISTRIB_CODENAME | awk -F'=' '{print $2}')

# git_ws
export GIT_USER_NAME='Satoshi Kataoka'
export GIT_USER_EMAIL='k.3104is@gmail.com'

# cron_ws
export CRON_BACKUP_DIR='/mnt/nas1'
export BACKUP_DST_IP='Satoshi@192.168.10.100'
export BACKUP_DST_PORT='33333'
export BACKUP_DIR_NAME='workspace'
export BACKUP_DST_PATH="/var/services/homes/Satoshi/tmp/bak_${BACKUP_DIR_NAME}.tar.gz"