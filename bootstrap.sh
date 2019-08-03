#!/usr/bin/env bash
Black='\033[0;30m'
DarkGray='\033[1;30m'

Red='\033[0;31m'
LightRed='\033[1;31m'

Green='\033[0;32m'
LightGreen='\033[1;32m'

Brown='\033[0;33m'
Yellow='\033[1;33m'

Blue='\033[0;34m'
LightBlue='\033[1;34m'

Purple='\033[0;35m'
LightPurple='\033[1;35m'

Cyan='\033[0;36m'
LightCyan='\033[1;36m'

LightGray='\033[0;37m'
White='\033[1;37m'

NC='\033[0m' # No Color

PrintFancyLines(){
    printf "${Blue}------------------------${NC}\n"
}

InstallSoftware(){
    printf "${Blue}>> Installing $1${NC}\n"
    sudo xbps-install -S $1
    PrintFancyLines
}

EnableServices(){
    printf "${Blue}>> Enabling: $1${NC}\n"
    sudo ln -s /etc/sv/$1/ /var/service/
    PrintFancyLines
}

CheckRepo(){
    if [ -d ~/VoidConf ];then
    	DoMagic
#    	printf "${Red}>> VoidConf exists!${NC}\n"
	PrintFancyLines
    else
    	DoMagic
    fi
}

CloneRepo(){
    printf "${Blue}>> Cloning repo${NC}\n"
    git clone https://notabug.org/linarcx/VoidConf
    PrintFancyLines
}

Symlinkfiles(){
    printf "${Blue}>> Copying $1 to home directory${NC}\n"
    if [ -f ~/$1 ];then
	printf "${Yellow}>> BackUp Old $1${NC}\n"
    	mv ~/$1 ~/$1.bak
    	ln -s $PWD/$1 ~/$1
    else
    	ln -s $PWD/$1 ~/$1
    fi
    PrintFancyLines
}

CopyLocalFonts(){
    printf "${Blue}>> Copying local.conf to /etc/fonts${NC}\n"
    cd ../etc/fonts
    sudo cp local.conf /etc/fonts/local.conf
    PrintFancyLines
}

SymlinkDirs(){
    printf "${Blue}>> Copying $1 to home directory${NC}\n"
    if [ -d ~/$1 ];then
	printf "${Yellow}>> BackUp Old $1${NC}\n"
    	mv ~/$1 ~/$1.bak
    	ln -s $PWD/$1 ~/$1
    else
    	ln -s $PWD/$1 ~/$1
    fi
    PrintFancyLines
}

CreateTelegramDir(){
    printf "${Blue}>> Creating .tg2 dir${NC}\n"
    mkdir ~/.tg2
    mkdir ~/.local/share/Trash/
    mkdir ~/.local/share/Trash/files
    PrintFancyLines
}

DoMagic(){
    CloneRepo
    cd VoidConf/home
    Symlinkfiles .bashrc
    Symlinkfiles .profile
    Symlinkfiles .xinitrc
    Symlinkfiles .zshrc
    Symlinkfiles .zshenv
    Symlinkfiles .zprofile
    Symlinkfiles .gitconfig
    Symlinkfiles .gtkrc-2.0

    SymlinkDirs bin
    Symlinkfiles .ssh/config
    SymlinkDirs .config

    printf "${Blue}>> To download nvim plugins, open it and run: :PlugInstall${NC}\n"

    SymlinkDirs .weechat
}

InstallCustomScripts(){
    printf "${Blue}>> Installing oh-my-zsh $1${NC}\n"
    sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"\n
    PrintFancyLines

    printf "${Blue}>> Installing zsh-autosuggestions $1${NC}\n"
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
    PrintFancyLines

    printf "${Blue}>> Installing powerlevel9k $1${NC}\n"
    git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
    PrintFancyLines
}

FixFontRenderingIssue(){
    printf "${Blue}>> Fixing Font-Rendering issue${NC}\n"
    sudo ln -s /usr/share/fontconfig/conf.avail/70-no-bitmaps.conf /etc/fonts/conf.d/
    PrintFancyLines
}

InstallSoftware "git"
InstallSoftware "ranger ntfs-3g"
InstallSoftware "zathura zathura-djvu zathura-pdf-mupdf"
InstallSoftware "zsh mpv cmus rofi kitty weechat youtube-dl"
InstallSoftware "xz tar unzip p7zip"
InstallSoftware "feh fzf jcal htop gist ImageMagick the_silver_searcher"
InstallSoftware "gnome-screenshot android-file-transfer-linux"
InstallSoftware "tor torsocks obfs4proxy polipo privoxy wifish net-tools dnsmasq dnscrypt-proxy"
InstallSoftware "liberation-fonts-ttf nerd-fonts font-awesome5 font-iosevka ttf-ubuntu-font-family"
InstallSoftware "nodejs yarn neovim python-neovim python3-neovim"
InstallSoftware "x264 alsa-utils libva-intel-driver libva-vdpau-driver libvdpau-va-gl xf86-video-intel xf86-video-nouveau"
InstallSoftware "firefox qemu godot uget libreoffice telegram-desktop transmission-gtk"
InstallSoftware "i3 i3lock i3blocks w3m acpi atool wmctrl sysstat numlockx playerctl setxkbmap mediainfo parcellite"
InstallSoftware "xorg-minimal xorg-fonts xclip xprop xkbevd xdotool xkbutils xkblayout-state xbacklight"
InstallSoftware "xtools"

EnableServices tor
EnableServices privoxy
EnableServices polipo

InstallCustomScripts
CheckRepo

CreateTelegramDir
FixFontRenderingIssue
CopyLocalFonts

chmod +x .config/ranger/plugins/scope.sh

cd ~/VoidConf
git remote set-url origin git@pixie.town:linarcx1/VoidConf.git
git remote set-url --add origin git@github.com:LinArcX/VoidConf.git
git remote set-url --add origin git@git.sr.ht:~linarcx/VoidConf
git remote set-url --add origin git@notabug.org:linarcx/VoidConf.git
git remote set-url --add origin git@gitlab.com:LinArcX/voidconf.git

# InstallSoftware capitaine-cursors mcos-mjv-xfce-edition la-capitaine-icon-theme
# InstallSoftware font-vazir fsearch-git v2ray netctl rar
#	find ~/$1 -type d -maxdepth 1 -exec ln -s $PWD/$1 {} \;
#source ~/.zshrc
