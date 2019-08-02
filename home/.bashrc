# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

#-----------=[ Alias ]=-----------#
alias ls='ls --color=auto'
alias ll='ls -ltrah'
alias vim='nvim'
alias vi='nvim'
alias mh='sudo mount -t ntfs /dev/sdb /mnt/Hard'
alias ranger='ranger --cmd=tab_close'
alias pc='python -ic "from __future__ import division; from math import *"'
alias e="emacsclient"
alias E="SUDO_EDITOR=\"emacsclient\" sudo -e"
alias tel="Telegram -many -workdir ~/.tg2 &"

#---------=[ XBPS ]=------------#
alias xi="sudo xbps-install -S"
alias xq="xbps-query -Rs"
alias xql="xbps-query -l"
alias xqm="xbps-query -m"
alias xr="sudo xbps-remove"
alias xro="sudo xbps-remove -o"
alias xrr="sudo xbps-remove -R"

#---------------=[ Env ]=---------------#
export EDITOR="/usr/bin/nvim"
export FCEDIT="$EDITOR"
export VISUAL="$EDITOR"
export SUDO_EDITOR="$EDITOR"

export PATH=$PATH:$HOME/.cargo/bin
export PATH=$PATH:$HOME/.pub-cache/bin
export PATH=$PATH:$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:home/linarcx/.local/bin
export PATH=$PATH:$HOME/Documents/scripts
export ANDROID_NDK=/opt/android-ndk
export ANDROID_NDK_HOME=/opt/android-ndk
#export ANDROID_NDK_PLATFORM=android-18
#export PATH=$HOME/bin:/usr/local/bin:$PATH:$HOME/Other/bin
