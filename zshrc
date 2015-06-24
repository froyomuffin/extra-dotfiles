# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt autocd extendedglob
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/tw/.zshrc'

autoload -Uz compinit
compinit

# End of lines added by compinstall

# Mine
# =========
export PS1='[%n@%m %~]|$ '

# Add time to history
export HISTTIMEFORMAT="%d/%m/%y %T "

# Add ~/bin to path
export PATH=$PATH:/home/tw/bin/:/git/toolbox/bin/
export ANDROID_HOME=/opt/android-sdk

# X
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx

# Start byobu
[[ -z $(pidof tmux) ]] && echo "Starting byobu" && byobu

# Aliases
alias ls='ls --color=auto'
alias vi='vim'
alias open='xdg-open'
