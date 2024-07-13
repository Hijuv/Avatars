#!/bin/bash

# Deutsche Uhrzeit 
german_time=$(TZ="Europe/Berlin" date '+%H:%M')

# Koreanische Uhrzeit 
korean_time=$(TZ="Asia/Seoul" date '+%H:%M')

# Ausgabe formatieren und senden
echo "DE $german_time  KR $korean_time |"
