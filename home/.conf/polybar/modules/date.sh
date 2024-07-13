#!/bin/bash

# Pfad zur SQLite-Datenbankdatei
database_file="/home/marlon/.thunderbird/3k3tyou7.default-release/calendar-data/cache.sqlite"

# SQLite-Abfrage, um den nächsten Termin zu finden
next_event=$(sqlite3 "$database_file" "SELECT title FROM cal_events WHERE event_start > strftime('%s', 'now') ORDER BY event_start ASC LIMIT 1;")

# Gib den nächsten Termin aus
echo "$next_event"
