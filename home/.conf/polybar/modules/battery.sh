#!/bin/bash

# Batteriestand abrufen
capacity=$(cat /sys/class/power_supply/BAT0/capacity)

# Batteriestatus abrufen
status=$(cat /sys/class/power_supply/BAT0/status)

# Überprüfen, ob das Gerät gerade aufgeladen wird
if [[ $status == "Charging" ]]; then
    emoji=""
# Überprüfen, ob das Gerät über 30% Batteriestand hat
elif [[ $capacity -gt 30 ]]; then
    emoji=""
# Wenn das Gerät nicht aufgeladen wird und der Batteriestand unter 30% liegt
else
    emoji=""
fi

# Anpassung für vertikale Ausrichtung der Emojis (hier um 1 nach oben verschoben)
emoji_adjustment=""

# Ausgabe formatieren
output="$emoji_adjustment$emoji $capacity%"

# Ausgabe senden
echo $output
