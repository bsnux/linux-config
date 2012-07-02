#
# bsnux .bashrc file
#

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

alias ls='ls -h --color=auto'

# Mem. processes
alias mempro="ps -u arturo -o rss,comm"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Mercurial
if [ -f $HOME/.hgtab-bash.sh ]; then
    . $HOME/.hgtab-bash.sh
fi

# Django stuff
if [ -f $HOME/scripts/django_bash_completion.sh ]; then
    source $HOME/scripts/django_bash_completion.sh
fi
alias rr="python manage.py runserver"
alias shellplus="python manage.py shell_plus"
alias dbshell="python manage.py dbshell"

# virtualenv and virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
source /usr/bin/virtualenvwrapper.sh

# Git stuff
alias gst='git status'
alias gco='git commit -m'
alias ga='git add'
alias glog='git log'
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gdiff='git diff'
alias gp='git pull'
alias git="git-achievements"

# Displaying git branch inside prompt
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

function proml {
  local       GREEN="\[\033[0;32m\]"
  local       WHITE="\[\033[0;37m\]"
  local       RED="\[\033[0;31m\]"

PS1="[\u@\h \w($RED\$(~/.rvm/bin/rvm-prompt))$GREEN\$(parse_git_branch)]$WHITE\$ "
PS2='> '
PS4='+ '
}
proml

# auto-completion for git commands
source /usr/share/doc/git/contrib/completion/git-completion.bash

# Ruby Version Manager: Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
