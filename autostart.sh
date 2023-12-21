#/bin/bash


#polkit
/usr/lib/mate-polkit/polkit-mate-authentication-agent-1 &

#walpaper
~/.fehbg &

#dwmblocks &
/home/liv/.dwm/fuckubar.sh &

#notifcations
dunst &

#rgb, you will need to create a openRGB profile named lol, lol 
openrgb --profile lol.orp &

#keycords
sxhkd -c /home/liv/.dwm/sxhkdrc &

#remap CAPS LOCK AS ESC
#/usr/bin/setxkbmap -option "caps:swapescape"

