# Android dev
export ADT=/Users/junliang.feng/Downloads/Software/nativesdk/android/adt-bundle-mac-x86_64-20131030
export NDK=/Users/junliang.feng/Downloads/Software/nativesdk/android/android-ndk-r9c
export PATH=/usr/local/bin:$PATH:$ADT/sdk/platform-tools:$NDK:$ADT/sdk/tools

# Android build
ANDROID_HOME=$ADT/sdk
export ANDROID_HOME
ANT_HOME=/usr/local/Cellar/ant/1.9.3/libexec
export ANT_HOME

export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=$JAVA_HOME/bin:$PATH
export ANDROID_JAVA_HOME=$JAVA_HOME

GRADLE_HOME=/Users/junliang.feng/Downloads/Software/android/gradle-2.2.1
export PATH=$PATH:$GRADLE_HOME/bin

# for android screen cap
alias screencap="~/dev-conf/android/adb_screencap.sh"

# for latex
export PATH=/usr/local/texlive/2014/bin/x86_64-darwin:$PATH

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

##################
### MY ALIASES ###
##################

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# customize ls
alias ll='ls -lF'
alias gt='git'

# grep
alias grep='grep --color=auto'

# for git command line ui
function parse_git_branch () {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
# for terminal ui
RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
NO_COLOR="\[\033[0m\]"
# PS1="$GREEN\u@\h$NO_COLOR:\W$YELLOW\$(parse_git_branch)$NO_COLOR\n\$ "
PS1="~ $NO_COLOR\W$YELLOW\$(parse_git_branch)$NO_COLOR\n\$ "
# for git command auto-commplete
source ~/git-completion.bash

# Add local dev bash
# for local setting
if [ -f ~/.bashrc_local_dev ]; then
	source ~/.bashrc_local_dev
fi

# Dev
open=~/Documents/opentown/code
open_ios=$open/opentown-ios
open_api=$open/api-doc
open_server=$open/server-api

# playframework
PATH=$PATH:/Users/junliang/Downloads/activator-1.3.4
