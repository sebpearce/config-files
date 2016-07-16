# Base16 Shell
BASE16_SHELL="$HOME/config-files/base16-seb.dark.sh"
[[ -s $BASE16_SHELL  ]] && source $BASE16_SHELL

alias lah='ls -lah'
alias obp='vim ~/.bash_profile'
alias sbp='source ~/.bash_profile'
alias obashrc='vim ~/.bashrc'
alias sbashrc='source ~/.bashrc'
alias ozshrc='vim ~/.zshrc'
alias szshrc='source ~/.zshrc'

# Git
alias ga='git add'
alias gpush='git push'
alias gl='git log'
alias gs='git status'
alias gd='git diff'
alias gds='git diff --staged'
alias gcm='git commit -m'
alias gb='git branch'
alias gco='git checkout'
# alias gra='git remote add'
# alias grr='git remote rm'
alias gpull='git pull'
# alias gcl='git clone'
# alias gta='git tag -a -m'
# alias gf='git reflog'

# Rails
alias r='bin/rails'
alias rs='bin/rails server'
alias rc='bin/rails console'
alias rt='bin/rails test'

function findstring() {
  if [ $# -eq 0 ]; then
      echo "Usage: findstring <string> [format]"
  else
    if [ -z "$2" ]; then
        grep -rnwi . -e "$1"
    else
      grep --include=\*.$2 -rnwi . -e "$1"
    fi
  fi
}

# Bind F1 to fg for toggling between Vim and CL
# (requires zsh)
bind-F1-to-fg () {
  if [[ $#BUFFER -eq 0 ]]; then
    BUFFER="fg"
    zle accept-line
  else
    zle push-input
    zle clear-screen
  fi
}
zle -N bind-F1-to-fg
bindkey '^[OP' bind-F1-to-fg           # ^[OP = F1

# Append a new tip to tips.txt on the desktop
tip () {
  TIPFILE=~/Desktop/tips.txt
  # Append newline first if last char is not \n
  x=$(tail -c 1 $TIPFILE)
  if [ "$x" != "" ]
  then echo >> $TIPFILE
  fi
  echo "- ${1}" >> $TIPFILE
}
