#~/.bashrc

stty -ixon # Disable Ctrl-s and Ctrl-q

# enable 256 color support
export TERM=xterm-256color

# vi mode in bash
export EDITOR=vim
set editing-mode vi
set -o vi
$ bind -P

# set bash history
HISTSIZE=1000
HISTFILESIZE=2000
shopt -s histappend

# set prompt
PS1='${debian_chroot:+($debian_chroot)}\[\033[00;36m\][\u]\[\033[00m\] \[\033[01;36m\]\w\$ \[\033[00m\]'

# automatically swap directories when name of directory is entered
shopt -s autocd

# set colors
alias ls='ls -hN --color=auto --group-directories-first'
alias grep='grep --color=auto'

# general aliases
alias cl='clear'
alias ..='cd ..'

# show feedback when directory is created
alias mkdir='mkdir -pv'

# use neovim instead of vim
alias vim='nvim'

# git aliases
alias g='git'
alias gc='git commit -am'
alias gs='git status'

# ls aliases
alias l='ls -CF'
alias la='ls -A'
alias ll='ls -alF'

# set address of docker for windows deamon
export DOCKER_HOST=tcp://localhost:2375
