#!/bin/sh
enabled=$1
device_name="DLL0641:00 06CB:7621"
touchpad_id=$(xinput | grep -i $device_name | cut -f2 | cut -d '=' -f2);

if $enabled
then
  xinput set-prop $touchpad_id "Device Enabled" 1 | notify-send "The touchpad is now enabled." ""
else
  xinput set-prop $touchpad_id "Device Enabled" 0 | notify-send "The touchpad is now disabled." ""
fi
