# dotfiles

该repo是本人Arch Linux下的一些配置文件

### 开机免输入账号密码和startx命令，直接dwm桌面

```shell
vim /etc/systemd/system/getty.target.wants/getty@tty1.service
```

修改ExecStart一行

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

修改.zshrc，最下面添加如下一行

```sh
if [[ ! $DISPLAY && $(tty) == "/dev/tty1" ]]; then
	exec startx

fi
```

