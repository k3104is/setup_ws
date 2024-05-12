#!/bin/bash

CRON_DIR="/home/${USER}/.config/cron"

rm -rf ${CRON_DIR}
mkdir -p ${CRON_DIR}

cat << EOF > ${CRON_DIR}/backup.sh
#!/bin/bash

tar czvf - -C ~/ ${BACKUP_DIR_NAME} | ssh -p ${BACKUP_DST_PORT} ${BACKUP_DST_IP} "cat > ${BACKUP_DST_PATH}"
EOF
ln -s $(pwd)/crontab ${CRON_DIR}/crontab

crontab ${CRON_DIR}/crontab
