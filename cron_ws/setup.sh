#!/bin/bash

CRON_DIR="/home/${USER}/.config/cron"

rm -rf ${CRON_DIR}
mkdir -p ${CRON_DIR}

cat << EOF > ${CRON_DIR}/backup.sh
#!/bin/bash

tar czvf ${CRON_BACKUP_DIR}/bak_${USER}_workspace.tar.gz ~/workspace/
EOF
ln -s $(pwd)/crontab ${CRON_DIR}/crontab

crontab ${CRON_DIR}/crontab
