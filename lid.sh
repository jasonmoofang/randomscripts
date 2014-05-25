#!/bin/bash
export DISPLAY=:0
if grep closed /proc/acpi/button/lid/LID0/state
then
       xinput --set-prop "SynPS/2 Synaptics TouchPad" "Device Enabled" 0
       xinput --set-prop "AT Translated Set 2 keyboard" "Device Enabled" 0
       date > /home/lim/killpadlog
       echo "killing touchpad" >> /home/lim/killpadlog
else
       xinput --set-prop "SynPS/2 Synaptics TouchPad" "Device Enabled" 1
       xinput --set-prop "AT Translated Set 2 keyboard" "Device Enabled" 1
       date > /home/lim/revpadlog
       echo "reviving touchpad" >> /home/lim/revpadlog
fi
