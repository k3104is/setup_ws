#!/bin/bash

INIT_NAME="my_init"
SERVICE_DIR="/etc/systemd/system"
SCRIPT_DIR="/home/${USER}/workspace/setup_ws/systemd_ws"
SERVICE_NAME="${INIT_NAME}.service"
SCRIPT_NAME="${INIT_NAME}.sh"

tee ./${SERVICE_NAME} << EOF 
[Unit]
Description = ${INIT_NAME}
After=local-fs.target
ConditionPathExists=${SCRIPT_DIR}

[Service]
ExecStart=${SCRIPT_DIR}/${SCRIPT_NAME}
Restart=no
Type=simple

[Install]
WantedBy=multi-user.target
EOF

sudo chmod 764 ./${SCRIPT_NAME}
sudo ln -sf $(pwd)/${SERVICE_NAME} ${SERVICE_DIR}/

sudo systemctl daemon-reload
sudo systemctl enable ${SERVICE_NAME}
sudo systemctl start ${SERVICE_NAME}
sudo systemctl status ${SERVICE_NAME}