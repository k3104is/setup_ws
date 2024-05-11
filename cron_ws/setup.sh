#!/bin/bash

rm -rf ~/.config/cron
mkdir -p ~/.config/cron

ln -s $(pwd)/backup.sh ~/.config/cron/backup.sh
ln -s $(pwd)/crontab ~/.config/cron/crontab
crontab ~/.config/cron/crontab

