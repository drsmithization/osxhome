#======================== bash-completion
if [ -f /opt/local/etc/profile.d/bash_completion.sh ]; then
    . /opt/local/etc/profile.d/bash_completion.sh
fi

# You need to change the command iTerm2 uses to launch the shell in the appropriate profile in the preferences.
#
# 1. Menu > Preferences > Profiles tab
# 2. Select your profile, on the right switch to the General tab, see "Command"
# 3. Select "Command:" and enter /opt/local/bin/bash -l
# 4. Close and reopen any terminal windows
#
# Add /opt/local/bin/bash to the file /etc/shells


#======================== aliases
# ls
alias ls='ls -G'    # colored output
alias ll='ls -la'   # just a handy alias

# grep
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'


#======================== PS
PS1="\[\033[38;5;2m\][\[$(tput sgr0)\]\[\033[38;5;15m\]\t\[$(tput sgr0)\]\[\033[38;5;2m\]]\[$(tput sgr0)\]\[\033[38;5;15m\]\u\[$(tput sgr0)\]\[\033[38;5;2m\]@\[$(tput sgr0)\]\[\033[38;5;15m\]\h\[$(tput sgr0)\]\[\033[38;5;2m\]\\$\[$(tput sgr0)\]\[\033[38;5;15m\]\w\n\[$(tput sgr0)\]"
export PS1


#======================== useful functions
# nice looking man pages
function xman() {
    man -t "$@" | open -f -a /Applications/Preview.app
}

# notifications
function notify() {
    osascript -e "display notification \"$1\" with title \"$2\""
}

function nwr() {
    eval "$@"
    if [ $? -eq 0 ]; then
        notify "$*" "success"
    else
        notify "$*" "fail"
    fi
    tput bel
}

function set_hostname() {
    sudo scutil --set HostName "$1"
}

function command_exists() {
    type "$1" &> /dev/null ;
}

export -f xman
export -f notify
export -f nwr
export -f set_hostname
export -f command_exists


#======================== misc varibales
export EDITOR=vim

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8


#======================== python
export VIRTUALENV_DISTRIBUTE=true
export PIP_VIRTUALENV_BASE=~/.virtualenvs
export PIP_REQUIRE_VIRTUALENV=true
export PIP_DOWNLOAD_CACHE=~/.pip/cache

if command_exists virtualenv; then
    if [ -d "~/.virtualenvs/science" ]; then
        source ~/.virtualenvs/science/bin/activate
    fi
fi
