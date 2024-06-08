#!/bin/bash

touch /home/my_init

# echo performance | tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor

echo -1 > /proc/sys/kernel/perf_event_paranoid
