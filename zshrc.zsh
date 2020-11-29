#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#   Brandon Edens <brandonedens@gmail.com>
#
# Source Prezto.

if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
wd() {
  . $HOME/bin/wd/wd.sh
}

alias -s xml=vim
alias -s c=vim
alias -s h=vim
alias -s py=python2
alias -s conf=vim
alias grep='grep --color=auto --perl-regexp'
alias rgrep='grep --recursive --exclude="cscope.*"'
alias fgrep='fgrep --color=auto'

alias battery='upower -i /org/freedesktop/UPower/devices/battery_BAT0'

alias make="make -j"

alias ssh='TERM=xterm-256color ssh'

alias help='tldr'
alias du="ncdu --color dark -rr -x --exclude .git --exclude node_modules --exclude target"
alias ping='prettyping --nolegend'
alias cat='bat'

# Customize to your needs...
export LD_LIBRARY_PATH="$HOME/opt/jlink:$LD_LIBRARY_PATH"
export PATH=$HOME/.cargo/bin:$HOME/bin:$HOME/.node_modules/bin:$HOME/bin/ccache:$HOME/opt/jlink:$HOME/public/clojurescript/bin:/usr/share/java/apache-ant/bin:/opt/android-ndk/:$HOME/bin/:$HOME/public/clojurescript/bin:/usr/share/java/apache-ant/bin:/opt/android-ndk/:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/opt/android-ndk:/opt/android-sdk/platform-tools:/opt/android-sdk/tools:/usr/bin/vendor_perl:/usr/bin/core_perl:/opt/android-sdk/tools:/opt/android-sdk/platform-tools:/opt/android-sdk/tools:/opt/android-sdk/platform-tools:/opt/vmware/bin:$PATH

export EDITOR="nvim"

#export TERM="xterm-termite"

export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

export HISTSIZE=10000
export SAVEHIST=10000
export HIST_IGNORE_SPACE=1

export GLOG_logtostderr="1"

export GCC_COLORS="error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01"

export LESSOPEN="| source-highlight-esc.sh %s"
export LESS='-R '


#QEMU_AUDIO_DRV=none

#export BROWSER="chromium"

# export QT_STYLE_OVERRIDE="gtk"
# export QT_QPA_PLATFORMTHEME=gtk2
# export QT_QPA_PLATFORMTHEME=gnome
export QT_QPA_PLATFORMTHEME=qt5ct

unset GREP_OPTIONS

export KISYSMOD="/usr/share/kicad/footprints"
export KISYS3DMOD="/usr/share/kicad/modules/packages3d"

export PYTHONPATH="$HOME/pub/PyCortexMDebug/:${PYTHONPATH}"

#export CFLAGS="-fdiagnostics-color=always -Wextra -Wshadow -std=gnu11"

# man() {
#     env LESS_TERMCAP_mb=$'\E[01;31m' \
#     LESS_TERMCAP_md=$'\E[01;38;5;74m' \
#     LESS_TERMCAP_me=$'\E[0m' \
#     LESS_TERMCAP_se=$'\E[0m' \
#     LESS_TERMCAP_so=$'\E[38;5;246m' \
#     LESS_TERMCAP_ue=$'\E[0m' \
#     LESS_TERMCAP_us=$'\E[04;38;5;146m' \
#     man "$@"
# }

export ANDROID_HOME=$HOME/Android/Sdk
export NDK_HOME=$ANDROID_HOME/ndk-bundle

export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

#export ANDROID_SDK=/opt/android-sdk
#export ANDROID_NDK_HOME=/opt/android-sdk/ndk-bundle
#export ANDROID_NDK_HOST=linux-x86_64
#export ANDROID_NDK_PLATFORM=android-23
#export ANDROID_NDK_ROOT=/opt/android-ndk
#export ANDROID_NDK_TOOLCHAIN_PREFIX=arm-linux-androideabi
#export ANDROID_NDK_TOOLCHAIN_VERSION=4.9
#export ANDROID_NDK_TOOLS_PREFIX=arm-linux-androideabi
#export ANDROID_SDK_ROOT=/opt/android-sdk
#export ANDROID_API_VERSION=android-23
#export ANDROID_TARGET_ARCH=armeabi
#
#export ANDROID_PACKAGE_SOURCE_DIR=/opt/android-qt5/5.6.1/armeabi/src/android
#
#export GSTREAMER_SDK_ROOT_ANDROID=$HOME/pub/gstreamer-sdk-android
#export GSTREAMER_ROOT=$GSTREAMER_SDK_ROOT_ANDROID

export JAVA_HOME=/usr/lib/jvm/java-8-openjdk/

export NDK_HOST_SED=/usr/bin/sed
export GROFF_NO_SGR=1

eval $(dircolors $HOME/.dir_colors)

#export ARMGCC_DIR=/usr/lib/gcc/arm-none-eabi/5.2.0/

export MENUCONFIG_COLOR=blackbg

export GNUTERM=x11

export NIXPKGS=$HOME/nixpkgs
export NIXDIR=$HOME/nixpkgs

#export RUST_BACKTRACE=1

export GOPATH=$HOME/go
export GOROOT=/usr/lib/go

source $HOME/.profile
#source $HOME/.gpg-agent.profile

export npm_config_prefix=$HOME/.node_modules

[ -f $HOME/.skim.zsh ] && source $HOME/.skim.zsh

#source $HOME/.stg_aliases

 alias ls="exa"
 alias ll="exa --long --color-scale --git --sort modified -g -m -h --time-style long-iso --extended"
 alias llt="exa --tree --long --color-scale --git --sort modified -g -m -h --time-style long-iso --extended"
 alias lls="exa --long --color-scale --git --sort size -g -m -h --time-style long-iso --extended"
 alias lla="exa --all --long --color-scale --git --sort modified -g -m -h --time-style long-iso --extended"

# tabtab source for electron-forge package
# uninstall by removing these lines or running `tabtab uninstall electron-forge`
[[ -f $HOME/pub/pixelpusher/node_modules/tabtab/.completions/electron-forge.zsh ]] && . $HOME/pub/pixelpusher/node_modules/tabtab/.completions/electron-forge.zsh

#export _JAVA_AWT_WM_NONREPARENTING=1

export OCIO=/usr/share/blender/2.79/datafiles/filmic-blender/config.ocio

export XKB_DEFAULT_LAYOUT=us
export XKB_DEFAULT_OPTIONS=ctrl:nocaps

export RUSTC_WRAPPER=/usr/bin/sccache

# export QT_QPA_PLATFORM=wayland-egl
# export CLUTTER_BACKEND=wayland
# export SDL_VIDEODRIVER=wayland
# 
# export QT_WAYLAND_DISABLE_WINDOWDECORATION=1

set +o noclobber

eval $(starship init zsh)

