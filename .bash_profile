set -o vi
source ${HOME}/.git-prompt.sh
export CLICOLOR=1
export HISTCONTROL=erasedups
export HISTSIZE=100000
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWUPSTREAM="auto"
export GIT_PS1_SHOWUNTRACKEDFILES=1
export PS1='[\h \[\033[0;36m\]\W\[\033[0m\]$(__git_ps1 " \[\033[1;32m\](%s)\[\033[0m\]")]\$ '
export PATH=/opt/local/bin:/opt/local/sbin:~/bin:$PATH
alias bmp='jruby -G -J-Xmn4096m -J-Xms8192m -J-Xmx8192m -J-server bin/brakeman_pro'
alias bmpt='jruby -G -J-Xmn4096m -J-Xms8192m -J-Xmx8192m -J-server bin/test'
alias bmps='jruby -G -J-Xmn4096m -J-Xms8192m -J-Xmx8192m -J-server bin/scan_all_apps'
alias gap='git add --patch'
alias be='bundle exec '
alias gp='git pull'
alias ll='ls -lah '
alias gpo='git push origin HEAD'
source ~/.profile
source ~/.inputrc
source ~/.functions
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
