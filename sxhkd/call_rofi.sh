#!/bin/sh
if pgrep -x rofi; then
    killall rofi
else
    ~/.config/rofi/bin/launcher_colorful
fi
