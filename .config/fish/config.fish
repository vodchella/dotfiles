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

set -Ux EDITOR vim
# cat ~/.cache/wal/sequences & clear
fish_default_key_bindings

fish_ssh_agent

set -g -x fish_greeting 'Привет, Максимка!'
set -g -x PAGER most

set -g -x ANDROID_HOME $HOME/Android/Sdk
set -g -x PATH $PATH $ANDROID_HOME/emulator
set -g -x PATH $PATH $ANDROID_HOME/tools
set -g -x PATH $PATH $ANDROID_HOME/tools/bin
set -g -x PATH $PATH $ANDROID_HOME/platform-tools

alias cd..='cd ..'
alias ls='lsd -F'
alias ssh_bot_srv='ssh -p 17120 root@bot-srv'
alias ssh_twr_srv='ssh -p 17120 root@arms.kz'
alias mount_bot_srv='sshfs -p 17120 root@bot-srv:/ /mnt/bot-srv'
alias r='ranger --choosedir=$HOME/.config/ranger/.rangerdir; cd (cat $HOME/.config/ranger/.rangerdir)'
alias m='unimatrix -l "so"'
alias notes='terminal_velocity'
alias cfg='git --git-dir=$HOME/projects/dotfiles/ --work-tree=$HOME'

unimatrix -l 'so'
