# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

#intellij path
alias intellij="/opt/idea-IU-173.3727.127/bin/idea.sh"
#pycharm path
alias pycharm="/opt/pycharm-community-2017.3/bin/pycharm.sh"
#screen lock with picture
alias lockscreen="i3lock -i ~/.i3/lock_screen.PNG"
#for copy pasta
alias xclip="xclip -selection c"
#nvim
alias vim=nvim

#No need to have capslock do anything
setxkbmap -option caps:none

#go config
export PATH=$PATH:/usr/local/go/bin
export GOPATH=/home/tpalace/gosandbox
