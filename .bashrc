# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto -F'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -AF'
alias l='ls -CF'
alias cd..='cd ..'
alias Cd='cd'
alias Cd..='cd ..'
alias less='most'
alias find_files='f(){ find . -name "$@";  unset -f f; }; f'
alias rm_files='f(){ find . -name "$@" -delete;  unset -f f; }; f'
alias git_log='git log --graph --pretty="format:%C(yellow)%h%Creset %Cgreen%an%Creset, %C(cyan)%ar%Creset%n%s"'


alias ssh_linux_test='ssh novelty@linux_test'
alias ssh_linux_main='ssh -p 35464 novelty@linux_main'
alias ssh_linux_reserve='ssh -p 35464 novelty@linux_reserve'
alias ssh_activiti_server='ssh vodchella@activiti-server'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi


if [ -f ~/.bash_git ]; then
    . ~/.bash_git
fi

txt_error()
{
  echo -e "\033[1;41;1;37m"
}

txt_red()
{
  echo -e "\033[01;31m"
}

txt_dark_red()
{
    echo -e "\033[0;31m"
}

txt_green()
{
  echo -e "\033[01;32m"
}

txt_yellow()
{
  echo -e "\033[01;33m"
}

txt_blue()
{
  echo -e "\033[01;34m"
}

txt_cyan()
{
  echo -e "\033[01;36m"
}

txt_reset()
{
  echo -e "\033[00m"
}

function check_bzr
{
    # Установлен ли bazaar?
    # local BZR_BIN=$(which bzr 2>/dev/null)
    # [[ -z $BZR_BIN ]] && return
    
    # Мы в репозитории bazaar?
    local BZR_STATUS=$(bzr status 2>/dev/null)
    [[ -z $BZR_STATUS ]] && return
    
    echo "bzr"
}

function check_svn
{
    # Установлен ли svn?
    # local SVN_BIN=$(which svn 2>/dev/null)
    # [[ -z $SVN_BIN ]] && return
    
    # Мы в репозитории svn?
    local SVN_INFO=$(svn info 2>/dev/null)
    [[ -z $SVN_INFO ]] && return

    echo "svn"
}

function check_git
{
    # Установлен ли git?
    # local GIT_BIN=$(which git 2>/dev/null)
    # [[ -z $GIT_BIN ]] && return
    
    # Мы в репозитории git?
    local GIT_STATUS=$(git status 2>/dev/null)
    [[ -z $GIT_STATUS ]] && return

    export GIT_PS1_SHOWDIRTYSTATE=1
    echo "git$(txt_dark_red)$(__git_ps1)$(txt_reset)"
}

function virtualenv_info {
    [[ -n "$VIRTUAL_ENV" ]] && echo "$(txt_cyan) ${VIRTUAL_ENV##*/}$(txt_reset) "
}
export VIRTUAL_ENV_DISABLE_PROMPT=1

# echo -en "\033[6n" && read -sdR CURPOS
# [[ ${CURPOS##*;} -gt 1 ]] && echo "$(txt_error)↵$(txt_reset)"


export PS1='${debian_chroot:+($debian_chroot)}[$(txt_yellow)\u$(txt_reset)@$(txt_green)\h$(txt_reset)]$(virtualenv_info) $(txt_blue)\w$(txt_reset) \$\n$(txt_red)$(check_svn)$(check_git):$(txt_reset) '
export PAGER=most
export EDITOR='vim'

