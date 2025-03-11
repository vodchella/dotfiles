#   __ _     _                        __ _       
#  / _(_)___| |__     ___ ___  _ __  / _(_) __ _ 
# | |_| / __| '_ \   / __/ _ \| '_ \| |_| |/ _` |
# |  _| \__ \ | | | | (_| (_) | | | |  _| | (_| |
# |_| |_|___/_| |_|  \___\___/|_| |_|_| |_|\__, |
#                                          |___/
# Path to Oh My Fish install.
#set -q XDG_DATA_HOME
#  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
#  or set -gx OMF_PATH "$HOME/.local/share/omf"

# Load Oh My Fish configuration.
#source $OMF_PATH/init.fish

set -g __fish_git_prompt_char_dirtystate "⚡"
set -g __fish_git_prompt_char_stagedstate "+"

set -Ux EDITOR nvim
# cat ~/.cache/wal/sequences & clear
fish_default_key_bindings

fish_ssh_agent

set -g -x fish_greeting 'Привет, Максимка!'
set -g -x PAGER 'less -RF --mouse --wheel-lines=3'

set -g -x ANDROID_HOME $HOME/Android/Sdk
set -g -x PATH $PATH $HOME/progs/yandex-cloud/bin
set -g -x PATH $PATH $ANDROID_HOME/emulator
set -g -x PATH $PATH $ANDROID_HOME/tools
set -g -x PATH $PATH $ANDROID_HOME/tools/bin
set -g -x PATH $PATH $ANDROID_HOME/platform-tools
set -g -x PATH $PATH $HOME/.local/bin

set -g -x JAVA_HOME /usr/lib/jvm/default
set -g -x LIBRARY_PATH $LIBRARY_PATH /usr/include/gtk-3.0

alias cd..='cd ..'
alias r='ranger --choosedir=$HOME/.config/ranger/.rangerdir; cd (cat $HOME/.config/ranger/.rangerdir)'
alias m='ncmpcpp'
alias v='nvim'
alias cfg='git --git-dir=$HOME/projects/dotfiles/ --work-tree=$HOME'
alias pacman_cleanup='sudo pacman -Rsn (pacman -Qdtq)'
alias bat='bat --pager="less -RF"'
alias activate_poetry_env='source (poetry env info --path)/bin/activate.fish'

# fish_local_settings
unimatrix -l 'so'
