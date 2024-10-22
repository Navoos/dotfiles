#!/bin/bash

STATUS=$(cat /sys/class/power_supply/BAT1/status)
PERCENTAGE=$(cat /sys/class/power_supply/BAT1/capacity)
# Unicode icons for charging/discharging/full
CHARGING_ICON="󰂄"  # or choose any other symbol you prefer
DISCHARGING_ICON="󰁹"
FULL_ICON="󱟢"

# Display appropriate icon based on charging status
if [ "$STATUS" = "Charging" ]; then
    echo "$CHARGING_ICON $PERCENTAGE%"
elif [ "$STATUS" = "Discharging" ]; then
    echo "$DISCHARGING_ICON $PERCENTAGE%"
elif [ "$STATUS" = "Full" ]; then
    echo "$FULL_ICON $PERCENTAGE%"
else
    echo "Unknown status"
fi

