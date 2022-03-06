#!/bin/bash

## merge .Xresources
xrdb -merge ~/.Xresources

## Launch picom
picom -CGb --vsync --backend glx &

## Launch nitrogen
nitrogen --restore &

## Set UK keyboard
setxkbmap -layout de &

nextcloud &
xfce4-clipman &
dunst &
redshift-gtk -l 52.28:8.92 &
# ~/.config/i3/update-notifier.sh &
