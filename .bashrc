#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

shopt -s checkwinsize
HISTCONTROL=ignoreboth

if [[ -e ~/.bashrc.alias ]] ; then
    source ~/.bashrc.alias
fi

export EDITOR='emacs -nw'
export GOPATH='/home/jh/kod/go'
export PATH=$PATH:~/.gem/ruby/2.3.0/bin
export TERM=xterm
export PS1="\[\033[01;37m\]\$? \$(if [[ \$? == 0 ]]; then echo \"\[\033[01;32m\]\342\234\223\"; else echo \"\[\033[01;31m\]\342\234\227\"; fi) $(if [[ ${EUID} == 0 ]]; then echo '\[\033[01;31m\]\h'; else echo '\[\033[01;32m\]\u@\h'; fi)\[\033[01;34m\] \w \$\[\033[00m\] "

function twitch() {
    livestreamer --http-header Client-ID=ewvlchtxgqq88ru9gmfp1gmyt6h2b93 \
		 "twitch.tv/$@" \
    		 best -p mpv
}
