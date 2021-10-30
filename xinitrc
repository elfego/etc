#!/bin/bash

# ~/.screenlayout/samsung_hp_.sh
~/.screenlayout/samsung_hp_quadro.sh
systemctl --user import-environment DISPLAY
# ~/.bin/keyboard.sh &
setxkbmap us colemak
xset r rate 180 90
xrdb -merge ~/.Xresources &
xscreensaver -no-splash &
~/.bin/lightson+ -d 4 &
#xcompmgr -c -C -t-5 -l-5 -r4.2 -o.55 &
# xcompmgr -c &
xcompmgr -f -D 5 -I 0.05 -O 1.0 &
# xbacklight -set 5 &
emacs --daemon &
# cbatticon &
nm-applet &
urxvtd -q -o -f &
[ ! -s ~/.config/mpd/pid ] && /usr/bin/mpd &

# feh --bg-center .wallpapers/old-man-of-storr-isle-1920x1080.jpg &
# feh --bg-center .wallpapers/vatnajokull-1920x1080.jpg &

# conky -c .config/conkyrc-old &
# pulseaudio --start &
pa-applet &
unclutter -idle 2 &
# pasystray &

# exec bubbles 2> /tmp/bubbles.log
exec dbus-launch awesome
