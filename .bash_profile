set -o vi

function timer_start {
  timer=${timer:-$SECONDS}
}

function timer_stop {
  timer_show=$(($SECONDS - $timer))
  unset timer
}

trap 'timer_start' DEBUG

if [ "$PROMPT_COMMAND" == "" ]; then
  PROMPT_COMMAND="timer_stop"
else
  PROMPT_COMMAND="$PROMPT_COMMAND; timer_stop"
fi


source ${HOME}/.git-prompt.sh
export CLICOLOR=1
export HISTCONTROL=erasedups
export HISTSIZE=100000
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUPSTREAM="auto"
export GIT_PS1_SHOWUNTRACKEDFILES=true
export PS1='[last: ${timer_show}s][\[\033[0;36m\]\W\[\033[0m\]$(__git_ps1 " \[\033[1;32m\](%s)\[\033[0m\]")]\$ '
export PATH=/opt/local/bin:/opt/local/sbin:~/bin:$PATH
alias bmp='jruby -G -J-Xmn4096m -J-Xms8192m -J-Xmx8192m -J-server bin/brakeman_pro'
alias bmpt='jruby -G -J-Xmn4096m -J-Xms8192m -J-Xmx8192m -J-server bin/test'
alias bmps='jruby -G -J-Xmn4096m -J-Xms8192m -J-Xmx8192m -J-server bin/scan_all_apps'
alias gap='git add --patch'
alias be='bundle exec '
alias gp='git pull'
alias ll='ls -lah '
alias gpo='git push origin HEAD'
alias delb='git co master && git pull origin master && git branch --merged| egrep -v "(^\*|master)" | xargs git branch -d'
alias br="git branch | grep \* | cut -d ' ' -f2 | tr -d '\n'"
source ~/.inputrc
source ~/.functions
source ~/dotfiles/.git-completion.bash
# [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
ssh-add -K ~/.ssh/id_rsa
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
