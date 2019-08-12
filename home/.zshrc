HISTSIZE=1000
HISTFILESIZE=2000

#-----------=[ Alias ]=-----------#
# General
alias vi='nvim'
alias vim='nvim'
alias cat='bat'
alias ll='ls -ltrah'
alias bashmount='sudo bashmount'
alias top='htop'
alias ls='ls --color=auto'
alias duch='f(){ du -ch "$1" }; f'
alias ranger='ranger --cmd=tab_close'
alias mh='sudo mount -t ntfs /dev/sdb /mnt/Hard'
alias tel="Telegram -many -workdir ~/.tg2 &"
alias pc='python -ic "from __future__ import division; from math import *"'

# Git
alias gii="git init"
alias gil="git log"
alias gcl='f(){ git clone "$1" }; f'
alias gis="git status"
alias giaa="git add ."
alias gia='f(){ git add "$1" };f'
alias gic='f(){ git commit -m "$1" }; f'
alias gid='f(){ git diff "$1" }; f'

alias gip="git push"
alias gipf="git push --force"

alias giri='f(){ git rebase -i HEAD~"$1" }; f'
alias girc='git rebase --continue'

alias gich='f(){ git checkout "$1"}; f'
alias gichb='f(){ git checkout -b "$1"}; f'

alias gar='f(){ git remote set-url --add origin "$1"}; f'
alias grr='f(){ git remote set-url origin "$1" }; f'
alias gir="git remote -v"
alias gitt="git tag"
alias gib="git branch -v"
alias giv="git var -l"
alias gigc="git gc"
alias gshow="cat ~/.zshrc | grep git"

# XBPS
alias xi="sudo xbps-install -S"                         # Install a package
alias xu="sudo xbps-install -Suv"                       # Update whole system
alias xid="sudo xbps-install -Sn"                       # Dry-run
alias xidn='f(){ xbps-install -Sn "$1" | wc -l }; f'    # Show the Number of all packages that will install with a pakcage

alias xr="sudo xbps-remove"                             # Remove a package
alias xrr="sudo xbps-remove -R"                         # Recursively remove packages that aren't required by other installed packages.
alias xro="sudo xbps-remove -o"                         # Remove all orphaned packages
alias xrO="sudo xbps-remove -O"                         # Cleans cache directory removing obsolete binary package
alias xrx="sudo xbps-remove -Oo"                        # Remove all orphaned packages and cache directory together

alias xq="xbps-query -Rs"                               # Search for a package
alias xql="xbps-query -l"                               # List of all packages
alias xqm="xbps-query -m"                               # List of all manual installed packages
alias xqms="tmp=$(mktemp); xbps-query -m > ${tmp}; xilog | grep -f ${tmp}; rm ${tmp};"
alias xqf="xbps-query -f"                               # List all files of related package
alias xqL="xbps-query -L"                               # List of all repos
alias xqO="xbps-query -O"                               # List of all orphaned packages
alias xrdp="xbps-query -X"                              # Show the reverse dependencies for PKG
alias xrvd="xbps-query -RX"                             # Show the reverse dependencies for PKG
alias xrd="xbps-query -Rx"                              # Showing the required dependencies for a package
alias xqH="xbps-query -H"                               # List registered packages in the package database (pkgdb) that are on hold
alias xqn="xbps-query -Rs '' | wc -l"                   # Show the number of whole packages in your repos

alias xh="xbps-pkgdb -m hold"                           # List of all packages that hold to be update!
alias xuh="xbps-pkgdb -m unhold"                        # List of all packages that unhold and can ba update.

alias xal='f(){ sudo xbps-alternatives -l "$1" }; f'    # List alternatives for a specific package

alias xcs="du -ch /var/cache/xbps"                      # Calculate the size of cache directory
alias xla="ls /var/cache/xbps | wc -l"                  # Show the number of all packages in cache directory
alias xlnf="grep \"repository=nonfree\" srcpkgs/*/template"     # List of all nonfree packages in xbps
alias xshow="cat ~/.zshrc | grep xbps"                  # Show all xbps commands.

## Pacman
#alias pshow="cat ~/.zshrc | grep -E 'pacman|expac|paccache'"                    # Show all pacman Commands.
#
#alias pi='f(){ sudo pacman -S "$1"}; f'                                         # Install a package
#alias pr='f(){ sudo pacman -Rnsu "$1"}; f'                                      # Remove a package
#alias pyu='f(){ sudo pacman -Syyuu --ignore "$1"}; f'                           # Update whole system
#
#alias pq="pacman -Qe"                                                           # List of all manual installed packages
#alias pqn="pacman -Qe | wc -l"                                                  # Number of all manual installed packages
#alias ple="pacman -Qent"                                                        # List all explicitly installed native packages
#alias plen="pacman -Qent | wc -l"                                               # Number of all explicitly installed native packages
#
#alias plfo="pacman -Qm"                                                         # List all foreign packages
#alias pld='f(){ expac -l "\n" %E -S "$1"}; f'                                   # the dependencies list of several packages
#alias pds='f(){ expac -S -H M '%k\t%n' "$1"}; f'                                # list the download size of several packages
#
#alias pwc="sudo paccache -rk 1 && sudo paccache -ruk 0"                         # Wipe cache!
#alias prd="pacman -Quq | xargs expac -S -H M '%k\t%n' | sort -sh"               # list the packages ready for upgrade + their download size
#alias plf='f(){ pacman -Qlq "$1" | grep -v "/$" | xargs du -h | sort -h}; f'    # Listing files owned by a package with size
#alias plip="expac --timefmt='%Y-%m-%d %T' '%l\t%n' | sort | tail -n 20"         # Last 20 installed packages
#
#alias pqa="pacman -Qi | awk '/^Name/{name=\$3} /^Installed Size/{print \$4$5, name}' | sort -h"
#alias pqan="pacman -Qi | awk '/^Name/{name=\$3} /^Installed Size/{print \$4$5, name}' | sort -h | wc -l"
#alias pbap="pacman -Qq | fzf --preview 'pacman -Qil {}' --layout=reverse --bind 'enter:execute(pacman -Qil {} | less)'"

#---------------=[ Env ]=---------------#
export EDITOR="/usr/bin/nvim"
export FCEDIT="$EDITOR"
export VISUAL="$EDITOR"
export SUDO_EDITOR="$EDITOR"

export PATH=$PATH:$HOME/bin
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/.cargo/bin
export PATH=$PATH:$HOME/.pub-cache/bin
export PATH=$PATH:$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin

# LaTeX
export PATH=$PATH:$HOME/.tex/local/texlive/2019/bin/x86_64-linux
export MANPATH=$MANPATH:$HOME/.tex/local/texlive/2019/texmf-dist/doc/man
export INFOPATH=$INFOPATH:$HOME/.tex/local/texlive/2019/texmf-dist/doc/info

export ANDROID_NDK=/opt/android-ndk
export ANDROID_NDK_HOME=/opt/android-ndk

export ZSH="/home/linarcx/.oh-my-zsh"
ZSH_THEME="powerlevel9k/powerlevel9k"

# Uncomment the following line to use case-sensitive completion.
#CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

plugins=(git z extract zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh

#--------------=[ Other ]=--------------------#
plugins=(git)
plugins=(zsh-syntax-highlighting)

#--------------=[ Functions ]=---------------#
enc(){
    if [ -z "$1" ]; then
        (>&2 echo "ERROR: No file provided!")
    else
        # gpg --cipher-algo AES256 -o $1.gpg -c $1 && rm $1 && echo "File encrypted and original File Deleted!";
         gpg -e -r $USER $1 && rm -rf $1 || echo "Error, $1 did not encrypt!";
    fi
}
dec(){
    if [ -z "$1" ];then
        (>&2 echo "ERROR: No file provided!")
    else
        gpg $1 && rm -rf $1 || echo "Error, $1 did not decrypt!";
    fi
}
#export -f dec
#export -f enc

#-----------=[ Set the prompt theme ]=----------------#
#   Setting it to 'random' loads a random theme.      #
#       Auto set to 'off' on dumb terminals.          #
# ----------------------------------------------------#
POWERLEVEL9K_MODE="nerdfont-complete"
POWERLEVEL9K_DISABLE_PROMPT=true
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="╭"
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="╰\uF460 "
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_DIR_OMIT_FIRST_CHARACTER=false
POWERLEVEL9K_ALWAYS_SHOW_CONTEXT=true
POWERLEVEL9K_ALWAYS_SHOW_USER=false
POWERLEVEL9K_CONTEXT_TEMPLATE="\uF109 %m"
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND="006"
POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND="235"
POWERLEVEL9K_CONTEXT_ROOT_FOREGROUND="006"
POWERLEVEL9K_CONTEXT_ROOT_BACKGROUND="235"
POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR="\uE0B4"
POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR="%F{$(( 235 - 2 ))}|%f"
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR="\uE0B6"
POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR="%F{$(( 235 - 2 ))}|%f"
POWERLEVEL9K_STATUS_VERBOSE=true
POWERLEVEL9K_STATUS_CROSS=true
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(root_indicator context dir_writable dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(command_execution_time background_jobs status time ssh)
POWERLEVEL9K_VCS_CLEAN_BACKGROUND="green"
POWERLEVEL9K_VCS_CLEAN_FOREGROUND="235"
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND="yellow"
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND="235"
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND="magenta"
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND="235"
POWERLEVEL9K_DIR_HOME_BACKGROUND="006"
POWERLEVEL9K_DIR_HOME_FOREGROUND="235"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="006"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="235"
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="006"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="235"
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_BACKGROUND="006"
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_FOREGROUND="235"
POWERLEVEL9K_STATUS_OK_FOREGROUND="006"
POWERLEVEL9K_STATUS_OK_FOREGROUND="green"
POWERLEVEL9K_STATUS_OK_BACKGROUND="235"
POWERLEVEL9K_STATUS_OK_BACKGROUND="$(( 235 + 2 ))"
POWERLEVEL9K_STATUS_ERROR_FOREGROUND="006"
POWERLEVEL9K_STATUS_ERROR_FOREGROUND="red"
POWERLEVEL9K_STATUS_ERROR_BACKGROUND="235"
POWERLEVEL9K_STATUS_ERROR_BACKGROUND="$(( 235 + 2 ))"
POWERLEVEL9K_HISTORY_FOREGROUND="006"
POWERLEVEL9K_TIME_FORMAT="%D{%T \uF017}" #  15:29:33
POWERLEVEL9K_TIME_FOREGROUND="006"
POWERLEVEL9K_TIME_BACKGROUND="235"
POWERLEVEL9K_VCS_GIT_GITHUB_ICON=""
POWERLEVEL9K_VCS_GIT_BITBUCKET_ICON=""
POWERLEVEL9K_VCS_GIT_GITLAB_ICON=""
POWERLEVEL9K_VCS_GIT_ICON=""
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND="235"
POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND="006"
POWERLEVEL9K_EXECUTION_TIME_ICON="\u23F1"
POWERLEVEL9K_BACKGROUND_JOBS_FOREGROUND="235"
POWERLEVEL9K_BACKGROUND_JOBS_BACKGROUND="006"
POWERLEVEL9K_USER_ICON="\uF415" # 
POWERLEVEL9K_USER_DEFAULT_FOREGROUND="006"
POWERLEVEL9K_USER_DEFAULT_BACKGROUND="235"
POWERLEVEL9K_USER_ROOT_FOREGROUND="006"
POWERLEVEL9K_USER_ROOT_BACKGROUND="235"
POWERLEVEL9K_ROOT_INDICATOR_FOREGROUND="006"
POWERLEVEL9K_ROOT_INDICATOR_FOREGROUND="magenta"
POWERLEVEL9K_ROOT_INDICATOR_BACKGROUND="235"
POWERLEVEL9K_ROOT_INDICATOR_BACKGROUND="$(( 235 + 2 ))"
POWERLEVEL9K_ROOT_INDICATOR_BACKGROUND="$(( 235 - 2 ))"
POWERLEVEL9K_ROOT_ICON=$'\uF198'  # 
POWERLEVEL9K_SSH_FOREGROUND="006"
POWERLEVEL9K_SSH_FOREGROUND="yellow"
POWERLEVEL9K_SSH_BACKGROUND="235"
POWERLEVEL9K_SSH_BACKGROUND="$(( 235 + 2 ))"
POWERLEVEL9K_SSH_BACKGROUND="$(( 235 - 2 ))"
POWERLEVEL9K_SSH_ICON="\uF489"  # 
POWERLEVEL9K_HOST_LOCAL_FOREGROUND="006"
POWERLEVEL9K_HOST_LOCAL_BACKGROUND="235"
POWERLEVEL9K_HOST_REMOTE_FOREGROUND="006"
POWERLEVEL9K_HOST_REMOTE_BACKGROUND="235"
POWERLEVEL9K_HOST_ICON_FOREGROUND="006"
POWERLEVEL9K_HOST_ICON_BACKGROUND="235"
POWERLEVEL9K_HOST_ICON="\uF109" # 
POWERLEVEL9K_OS_ICON_FOREGROUND="006"
POWERLEVEL9K_OS_ICON_BACKGROUND="235"
POWERLEVEL9K_LOAD_CRITICAL_BACKGROUND="235"
POWERLEVEL9K_LOAD_WARNING_BACKGROUND="235"
POWERLEVEL9K_LOAD_NORMAL_BACKGROUND="235"
POWERLEVEL9K_LOAD_CRITICAL_FOREGROUND="red"
POWERLEVEL9K_LOAD_WARNING_FOREGROUND="yellow"
POWERLEVEL9K_LOAD_NORMAL_FOREGROUND="green"
POWERLEVEL9K_LOAD_CRITICAL_VISUAL_IDENTIFIER_COLOR="red"
POWERLEVEL9K_LOAD_WARNING_VISUAL_IDENTIFIER_COLOR="yellow"
POWERLEVEL9K_LOAD_NORMAL_VISUAL_IDENTIFIER_COLOR="green"
POWERLEVEL9K_BATTERY_LEVEL_BACKGROUND_COLOR="235"
POWERLEVEL9K_BATTERY_CHARGING_BACKGROUND="235"
POWERLEVEL9K_BATTERY_CHARGED_BACKGROUND="235"
POWERLEVEL9K_BATTERY_DISCONNECTED_BACKGROUND="235"
