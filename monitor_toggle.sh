#!/usr/bin/bash

# Detect connected monitors
sleep 10
external_monitor=$(hyprctl monitors | grep "Monitor HDMI-A-1" | awk '{print $2}') # Adjust HDMI to match your external monitor's name
laptop_monitor=$(hyprctl monitors | grep "Monitor eDP-1" | awk '{print $2}')     # eDP is often the laptop screen; adjust if needed

if [ -n "$external_monitor" ]; then
    # External monitor is connected; turn off laptop monitor
    hyprctl dispatch dpms off "$laptop_monitor"
else
    # External monitor is disconnected; turn on laptop monitor
    hyprctl dispatch dpms on "$laptop_monitor"
fi

