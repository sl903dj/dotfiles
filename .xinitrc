#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then







    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then







    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

export LANG=zh_CN.UTF-8
export LANGUAGE=zh_CN:en_US
export LC_CTYPE=en_US.UTF-8

export _JAVA_AWT_WM_NONREPARENTING=1
export AWT_TOOLKIT=MToolkit

# 笔记本不外接显示器设置
# xrandr --output eDP-1 --mode 3200x2000 --rate 90.00

# 右接23寸1080p DPI96显示器设置
xrandr --dpi 200 --fb 6080x3200 --output eDP-1 --mode 3200x2000 --scale 0.9999x0.9999 --pos 0x0 --output DP-1 --scale 1.5x1.5 --pos 3200x0 --panning 2880x1620+3200+0

# feh --bg-fill --randomize /home/xiaosu/Pictures/1600696508968_wallhaven-95g7ow.jpg
/home/xiaosu/suckless/dwm/scripts/autochangewallpaper.sh &
wmname LG3D &
fcitx5 &
slstatus &
picom -CGb
copyq &
conky &
dunst &
nm-applet &
udiskie -ans &

exec dwm
