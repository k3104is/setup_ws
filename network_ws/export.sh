#!/bin/bash

# network_ws
export NETWORK_YAML_NAME='80-wifi.yaml'
export NETWORK_SSID_NAME='aterm-e5370a-g'
export NETWORK_SSID_PASS="$(cat ./network_ws/pass.txt | openssl enc -base64 -d -aes-256-cbc)"
export NETWORK_IP_ADDR='192.168.10.xxx/24'
export NETWORK_DEFAULT_GW='192.168.10.xxx/24'