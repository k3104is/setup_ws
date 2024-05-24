#!/bin/bash

INIT_NAME="my_init"
SERVICE_DIR="/etc/systemd/system/"
SERVICE_NAME="${INIT_NAME}.service"
SCRIPT_NAME="${INIT_NAME}.sh"

sudo chmod 764 ./${SCRIPT_NAME}
sudo ln -sf $(pwd)/${SERVICE_NAME} ${SERVICE_DIR}

sudo systemctl daemon-reload
sudo systemctl enable ${SERVICE_NAME}
sudo systemctl start ${SERVICE_NAME}
sudo systemctl status ${SERVICE_NAME}