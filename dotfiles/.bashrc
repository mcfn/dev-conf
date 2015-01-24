# Android dev
export ADT=/Users/junliang.feng/Downloads/Software/nativesdk/android/adt-bundle-mac-x86_64-20131030
export NDK=/Users/junliang.feng/Downloads/Software/nativesdk/android/android-ndk-r9c
export PATH=/usr/local/bin:$PATH:$ADT/sdk/platform-tools:$NDK:$ADT/sdk/tools

# Android build
ANDROID_HOME=$ADT/sdk
export ANDROID_HOME
ANT_HOME=/usr/local/Cellar/ant/1.9.3/libexec
export ANT_HOME

# for android screen cap
alias screencap="~/dev-conf/android/adb_screencap.sh"

# for latex
export PATH=/usr/local/texlive/2014/bin/x86_64-darwin:$PATH

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

##################
### MY ALIASES ###
##################

# customize ls
alias ls='ls -lF'

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
PS1="$GREEN\u@\h$NO_COLOR:\W$YELLOW\$(parse_git_branch)$NO_COLOR\n\$ "
# for git command auto-commplete
source ~/git-completion.bash

# Add local dev bash
# for local setting
if [ -f ~/.bashrc_local_dev ]; then
	source ~/.bashrc_local_dev
fi

