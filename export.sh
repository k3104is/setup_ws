#!/bin/bash

export CODENAME=$(cat /etc/lsb-release | grep DISTRIB_CODENAME | awk -F'=' '{print $2}')

# network_ws
export NETWORK_YAML_NAME='80-wifi.yaml'
export NETWORK_SSID_NAME='aterm-e5370a-g'
export NETWORK_SSID_PASS="$(cat ./network_ws/pass.txt | openssl enc -base64 -d -aes-256-cbc)"
export NETWORK_IP_ADDR='192.168.10.xxx/24'
export NETWORK_DEFAULT_GW='192.168.10.xxx/24'

# git_ws
export GIT_USER_NAME='Satoshi Kataoka'
export GIT_USER_EMAIL='k.3104is@gmail.com'

# cron_ws
export CRON_BACKUP_DIR='/mnt/nas1'
export BACKUP_DST_IP='Satoshi@192.168.10.100'
export BACKUP_DST_PORT='33333'
export BACKUP_DIR_NAME='workspace'
export BACKUP_DST_PATH="/var/services/homes/Satoshi/tmp/bak_${BACKUP_DIR_NAME}.tar.gz"