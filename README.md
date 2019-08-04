### After installation processes
1. Connect to wireless network. So install `wifish` package and connect to wifi network through it.
2. clear rc.local file from unneded informations. So open `/etc/rc.local` file and comment all lines of it.
3. Download and run `bootstrap.sh` file and let it to install and configure your Void-Linux. :)

### Run bootsrap.sh to instlal all the stuffs :)
Tip: Feel free to customize bootstrap.sh according to your needs. :)

First run this command:
`curl -O https://notabug.org/linarcx/VoidConf/raw/master/bootstrap.sh && chmod +x bootstrap.sh && ./bootstrap.sh`

After a while it starts to  install a bunch of softwares and then start to copy some config files into your home directory.

Then it download oh-my-zsh and change the shell from bash to zsh. in the phase you must re-run __bootstrap.sh__ again to complete the journey.
After install done, you should do some other works to have a complete void-installation:

1. Allow normal users to use sudo command and shutdown, reboot, ...
Fire-up: `sudo visudo` and uncomment these lines:
```
## Uncomment to allow members of group wheel to execute any command
%wheel ALL=(ALL) ALL

## Same thing without a password
%wheel ALL=(ALL) NOPASSWD: /usr/bin/halt, /usr/bin/poweroff, /usr/bin/reboot, /usr/bin/shutdown, /usr/bin/zzz
```

### Create Custom repo and push it on ipfs[WIP]
First create a key with:
`ssh-keygen -t rsa -m PEM``

Tip: Notice that we use __PEM__ in here. it's nessary otherway you got errors.

Creating a local repository
`xbps-rindex -a /path/to/dir/*.xbps`

Initialize the repository metadata with signing properties:
`xbps-rindex --sign --signedby "linarcx" /path/to/dir`

Sign a package:
`xbps-rindex --signedby "linarcx" --sign-pkg font-vazir-20.1.0_1.noarch.xbps`

Sign whole packages in current directory:
`xbps-rindex --signedby "I'm Groot" --sign-pkg *.xbpx`

Push it on ipfs:

Install some package from it:
`sudo xbps-install --repository=https://git.sr.ht/\~linarcx/linarcxbps/tree/master/packages jcal`

### Fix date & time issue
If you dualboot void with windows you may encounter with some problems, like conflict date and time. Windows by default using localtime and most linux distros like void use UTC format.
So, for fixing the issue first go to windows and change it's time standard to UTC:
https://wiki.archlinux.org/index.php/System_time#UTC_in_Windows

And then go to void-linux and install `openntpd` package, then enable it's service:
`ln -s /etc/sv/openntpd /var/service/`

### References
1. [Signing_a_repo](https://wiki.voidlinux.org/XBPS#Signing_a_repository)
