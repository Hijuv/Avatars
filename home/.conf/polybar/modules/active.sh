#!/bin/bash

# Funktion zur Ermittlung des aktiven Fensters
get_active_window() {
    xdotool getwindowfocus getwindowname
}

# Funktion zur Ermittlung des aktuellen Tabs in Firefox
get_firefox_tab() {
    xdotool search --onlyvisible --class "firefox" windowfocus --sync key ctrl+l ctrl+c
    sleep 0.1
    echo -n "$(xclip -o)"
    xdotool key Escape
}

# Hauptfunktion, die je nach aktivem Fenster oder Firefox-Tab den entsprechenden Text ausgibt
main() {
    active_window=$(get_active_window)
    if [[ $active_window == *"Mozilla Firefox"* ]]; then
        firefox_tab=$(get_firefox_tab)
        echo "Firefox - $firefox_tab"
    else
        echo "$active_window"
    fi
}

main
