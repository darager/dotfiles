#~/.bashrc

stty -ixon # Disable ctrl-s and ctrl-q

# enable 256 color suppor for tmux
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

# swap directories quicker
shopt -s autocd

# set colors
alias ls='ls -hN --color=auto --group-directories-first'
alias grep='grep --color=auto'

# aliases
alias g='git'
alias mkdir='mkdir -pv'
alias cl='clear'

# ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# set docker for windows deamon address
export DOCKER_HOST=tcp://localhost:2375

# use neovim instead of vim
alias vim='nvim'
