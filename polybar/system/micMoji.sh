#!/bin/bash

# Get mic mute status (0 = unmuted, 1 = muted)
mic_status=$(pactl get-source-mute @DEFAULT_SOURCE@ | awk '{print $2}')

if [ "$mic_status" = "yes" ]; then
  echo "" > /home/zsx/system/micstatus
else
  echo "" > /home/zsx/system/micstatus
fi
