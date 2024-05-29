#!/bin/bash


# sudo tee /etc/netplan/${NETWORK_YAML_NAME} << EOF > /dev/null
tee ./${NETWORK_YAML_NAME} << EOF > /dev/null
network:
  version: 2
  wifis:
    renderer: networkd
    wlan0:
      access-points:
        ${NETWORK_SSID_NAME}:
          password: ${NETWORK_SSID_PASS}
      dhcp4: false
      addresses: [${NETWORK_IP_ADDR}]
      routes:
        - to: default
          via: ${NETWORK_DEFAULT_GW}
      nameservers:
        addresses: [${NETWORK_DEFAULT_GW}, 1.1.1.1, 8.8.8.8]
      optional: true
EOF

