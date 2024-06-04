#!/bin/bash

ALIASES_NAME=".bash_myaliases"
EXPORTS_NAME=".bash_myexports"

# myaliases
if [ ! $(cat ~/.bashrc | grep "# ${ALIASES_NAME}") ]; then
cat << EOF >> ~/.bashrc

# ${ALIASES_NAME}
if [ -f ~/${ALIASES_NAME} ]; then
  . ~/${ALIASES_NAME}
fi
EOF
fi

cp ./${ALIASES_NAME} ~/${ALIASES_NAME}

# myaliases
if [ ! $(cat ~/.bashrc | grep "# ${EXPORTS_NAME}") ]; then
cat << EOF >> ~/.bashrc

# ${EXPORTS_NAME}
if [ -f ~/${EXPORTS_NAME} ]; then
  . ~/${EXPORTS_NAME}
fi
EOF
fi

cp ./${EXPORTS_NAME} ~/${EXPORTS_NAME}


. ~/.bashrc
