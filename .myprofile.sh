# Base16 Shell
BASE16_SHELL="$HOME/config-files/base16-seb.dark.sh"
[[ -s $BASE16_SHELL  ]] && source $BASE16_SHELL

# Git

# Copy to .gitconfig [alias]
	# co = checkout
	# b = branch
	# ci = commit
	# di = diff
	# dc = diff
	# amend = commit
	# aa = add
	# ff = merge
	# pullff = pull
	# fa = fetch
	# log = log
	# s = status
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gcm='git commit -m'
alias gco='git checkout'
alias gpush='git push'
alias gpull='git pull'
alias gl='git log --oneline'
alias gd='git diff'
alias gds='git diff --staged'

# Misc aliases

alias lah='ls -lah'

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
