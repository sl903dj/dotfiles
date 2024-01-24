# dotfiles

该repo是本人Arch Linux下的一些配置文件

## 开机免输入账号密码和`startx`命令，直接进入dwm桌面

```shell
vim /etc/systemd/system/getty.target.wants/getty@tty1.service
```

修改`ExecStart`一行

```sh
[Service]
# the VT is cleared by TTYVTDisallocate
# The '-o' option value tells agetty to replace 'login' arguments with an
# option to preserve environment (-p), followed by '--' for safety, and then
# the entered username.
# ExecStart=-/sbin/agetty -o '-p -- \\u' --noclear - $TERM
ExecStart=-/sbin/agetty -o '-p -f xiaosu' -n -a xiaosu --noclear %I $TERM
...
```

修改`.zshrc`，最下面添加如下一行

```sh
if [[ ! $DISPLAY && $(tty) == "/dev/tty1" ]]; then
	exec startx

fi
```

## 配套安装

终端Alacritty

```shell
pacman -S alacritty
```

本地使用Alacritty，SSH远程SHELL中出现退格键变空格键（实际上退格键已生效，但显示效果是退格变空格），可能是远程系统terminfo数据库`/usr/share/terminfo/a/alacritty*`中没有Alacritty条目。此时需要将本地`/usr/share/terminfo/a/alacritty/alacritty.terminfo`复制到远程系统。

消息通知dunst

```shell
pacman -S dunst
```

dwm透明效果picom

```shell
pacman -S picom
```

启动器rofi

```shell
pacman -S rofi
```

vim文件管理器ranger

```shell
pacman -S ranger
```
ranger实现图片预览，需要安装`w3m`或`ueberzug`
```shell
pacman -S w3m
pacman -S ueberzug
```
并在`rc.conf`中设置
```shell
set preview_images_method ueberzug
```

复制粘贴copyq

```shell
pacman -S copyq
```

截图工具flameshot

```shell
pacman -S flameshot
```

下载器aria2

```shell
pacman -S aria2
```

自动挂载U盘

```shell
pacman -S udisks2 udiskie
```

系统监控conky

```shell
pacman -S conky
```
conky主题配置需要将文件夹`.harmattan-assets`放置在`~`，同时该主题需要配套安装`jq`和`bc`

```shell
pacman -S jq bc
```
