#!/bin/bash

# Funktion, um die Anzahl der Fenster auf einer Arbeitsfläche zu zählen
count_windows() {
    local workspace="$1"
    local window_count=$(xdotool search --desktop "$workspace" 2>/dev/null | wc -l)
    echo "$window_count"
}

# Funktion, um das aktuelle Arbeitsflächen-Symbol zu generieren
generate_workspace_symbol() {
    local workspace="$1"
    local window_count=$(count_windows "$workspace")
    local workspace_symbol="[   "
    
    # Wenn Fenster auf der Arbeitsfläche sind, füge die Anzahl der Fenster hinzu
    if [[ "$window_count" -gt 0 ]]; then
        workspace_symbol+=" $window_count "
    fi
    
    # Schließe das Symbol
    workspace_symbol+=" ] "
    
    # Gib das generierte Symbol zurück
    echo "$workspace_symbol"
}

# Funktion, um das aktive Arbeitsflächen-Symbol zu generieren
generate_active_workspace_symbol() {
    local active_workspace="$1"
    local workspace_symbol=$(generate_workspace_symbol "$active_workspace")
    
    # Hervorhebung des aktiven Arbeitsbereichs mit Fettschrift
        echo "[ * ] "
}

# Funktion, um die Arbeitsflächen-Symbole für alle Arbeitsflächen zu generieren
generate_all_workspace_symbols() {
    local current_workspace="$1"
    local workspace_count="$2"
    
    # Iteriere über alle Arbeitsflächen
    for ((i = 0; i < workspace_count; i++)); do
        if [[ "$i" -eq "$current_workspace" ]]; then
            # Generiere das Symbol für die aktive Arbeitsfläche
            echo -n "$(generate_active_workspace_symbol "$i") "
        else
            # Generiere das Symbol für eine inaktive Arbeitsfläche
            echo -n "$(generate_workspace_symbol "$i") "
        fi
    done
}

# Hauptfunktion
main() {
    # Anzahl der Arbeitsflächen abrufen
    local workspace_count=$(xdotool get_num_desktops)
    
    # Aktuelle Arbeitsfläche abrufen
    local current_workspace=$(xdotool get_desktop)
    
    # Arbeitsflächen-Symbole für alle Arbeitsflächen generieren
    local workspace_symbols=$(generate_all_workspace_symbols "$current_workspace" "$workspace_count")
    
    # Ausgabe der Arbeitsflächen-Symbole
    echo "$workspace_symbols"
}

# Hauptfunktion aufrufen und Ausgabe senden
main
