#!/bin/bash

CODENAME=$(cat /etc/lsb-release | grep DISTRIB_CODENAME | awk -F'=' '{print $2}')

# git_ws
GIT_USER_NAME='Satoshi'
GIT_USER_EMAIL='k.3104is@gmail.com'

# cron_ws
CRON_BACKUP_DIR='/mnt/nas1'
BACKUP_DST_IP='Satoshi@192.168.10.100'
BACKUP_DST_PORT='33333'
BACKUP_DIR_NAME='workspace'
BACKUP_DST_PATH="/var/services/homes/Satoshi/tmp/bak_${BACKUP_DIR_NAME}.tar.gz"