#!/bin/bash

SERVICE_DIR="/etc/systemd/system"
SCRIPT_DIR="$(pwd)"

INIT_NAME="my_init"
INIT_SERVICE_NAME="${INIT_NAME}.service"
INIT_SCRIPT_NAME="${INIT_NAME}.sh"

PERIOD_NAME="my_period"
PERIOD_SERVICE_NAME="${PERIOD_NAME}.service"
PERIOD_TIMER_NAME="${PERIOD_NAME}.timer"
PERIOD_SCRIPT_NAME="${PERIOD_NAME}.sh"

# my_init
tee ./${INIT_SERVICE_NAME} << EOF 
[Unit]
Description = ${INIT_NAME}

[Service]
ExecStart=${SCRIPT_DIR}/${INIT_SCRIPT_NAME}
Restart=no
Type=simple

[Install]
WantedBy=multi-user.target
EOF

sudo chmod 764 ./${INIT_SCRIPT_NAME}
sudo ln -sf $(pwd)/${INIT_SERVICE_NAME} ${SERVICE_DIR}/

sudo systemctl daemon-reload
sudo systemctl enable ${INIT_SERVICE_NAME}
sudo systemctl start ${INIT_SERVICE_NAME}
sudo systemctl status ${INIT_SERVICE_NAME}

# my_period
tee ./${PERIOD_SERVICE_NAME} << EOF 
[Unit]
Description = ${PERIOD_NAME}

[Service]
ExecStart=${SCRIPT_DIR}/${PERIOD_SCRIPT_NAME}
Restart=no
Type=simple

[Install]
WantedBy=multi-user.target
EOF

tee ./${PERIOD_TIMER_NAME} << EOF 
[Unit]
Description = ${PERIOD_NAME} timer

[Timer]
OnUnitActiveSec=1d

[Install]
WantedBy=timers.target
EOF

sudo chmod 764 ./${PERIOD_SCRIPT_NAME}
sudo ln -sf $(pwd)/${PERIOD_SERVICE_NAME} ${SERVICE_DIR}/
sudo ln -sf $(pwd)/${PERIOD_TIMER_NAME} ${SERVICE_DIR}/

sudo systemctl daemon-reload
sudo systemctl enable ${PERIOD_TIMER_NAME}
sudo systemctl start ${PERIOD_TIMER_NAME}
sudo systemctl status ${PERIOD_TIMER_NAME}
sudo systemctl start ${PERIOD_SERVICE_NAME}