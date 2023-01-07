#!/bin/bash

function run {
 if ! pgrep $1 ;
  then
    $@&
  fi
}
#run "xrandr --output VGA-1 --primary --mode 1360x768 --pos 0x0 --rotate normal"
#run "xrandr --output HDMI2 --mode 1920x1080 --pos 1920x0 --rotate normal --output HDMI1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output VIRTUAL1 --off"
#run xrandr --output eDP-1 --primary --mode 1368x768 --pos 0x0 --rotate normal --output DP-1 --off --output HDMI-1 --off --output DP-2 --off --output HDMI-2 --off
#run xrandr --output LVDS1 --mode 1366x768 --output DP3 --mode 1920x1080 --right-of LVDS1
#run xrandr --output DVI-I-0 --right-of HDMI-0 --auto
#run xrandr --output DVI-1 --right-of DVI-0 --auto
#run xrandr --output DVI-D-1 --right-of DVI-I-1 --auto
#run xrandr --output HDMI2 --right-of HDMI1 --auto
#autorandr horizontal

# run "nm-applet"
# run "pamac-tray"
#run "variety"
#run "xfce4-power-manager"
#run "blueberry-tray"
run "/usr/lib/xfce4/notifyd/xfce4-notifyd"
# run "batnotif.sh"
run "/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1"
picom -b  --config ~/.config/picom/picom.conf &
run "numlockx on"
# run "volumeicon"
run "dwmblocks" &
# run "slstatus" &
sxhkd -c ~/.config/sxhkd/sxhkdrc &
#run "nitrogen --restore"
#run "conky -c $HOME/.config/arco-dwm/system-overview"
#you can set wallpapers in themes as well
# feh --randomize --bg-fill /usr/share/backgrounds/* &
# feh --bg-fill /usr/share/backgrounds/archlinux-login-backgrounds/att-01.jpg &
feh --randomize --bg-fill ~/Apps/Tokyo-Night-GTK-Theme/wallpapers/* &
# feh --randomize --bg-fill ~/Pictures/Wallpapers/* &
# feh --bg-fill ~/Pictures/Wallpapers/images/room/12.jpg &
#wallpaper for other Arch based systems
# feh --bg-fill /usr/share/archlinux-tweak-tool/data/wallpaper/wallpaper.png &

#run applications from startup

xinput set-prop 12 "Device Enabled" 0 
#run "insync start"
#run "spotify"
#run "ckb-next -b"
#run "discord"
#run "telegram-desktop"
