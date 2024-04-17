#!/bin/bash
echo performance | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor
sudo echo 3900000 | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_min_freq
sudo echo 3900000 | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_max_freq
echo performance | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor
powerprofilesctl set performance
sudo sysctl vm.swappiness=0
gsettings set org.gnome.desktop.interface enable-animations false
