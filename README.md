### Install boostrap.sh
curl -O https://notabug.org/linarcx/VoidConf/raw/master/bootstrap.sh && chmod +x bootstrap.sh && ./bootstrap.sh

### Install oh-my-zsh
`sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"\n`

### Install zsh-autosuggestions
`git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions`

### Install powerlevel9k
`git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k`

### Allow normal users to use sudo command and shutdown, reboot, ...
Fire-up: `sudo visudo` and uncomment these lines:

```
## Uncomment to allow members of group wheel to execute any command
%wheel ALL=(ALL) ALL

## Same thing without a password
%wheel ALL=(ALL) NOPASSWD: /usr/bin/halt, /usr/bin/poweroff, /usr/bin/reboot, /usr/bin/shutdown, /usr/bin/zzz
```

### Connect to wireless network.
install wifish package and connect to wifi network through it.


### Remove dhcpcd service
1. Open `/etc/rc.local` file and comment all lines of it.                                                                                              2. Remove it's service: `sudo rm /var/service/dhcpcd`
