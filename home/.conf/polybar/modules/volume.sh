#!/bin/bash

status=$(amixer get Master | grep 'Front Left:' | awk -F'[][]' '{print $4}')
volume=$(amixer get Master | grep 'Front Left:' | awk -F'[][]' '{print $2}')

echo "|🔊 $volume|"
