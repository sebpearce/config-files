SSH_ENV=$HOME/.ssh/environment

# start the ssh-agent
function start_agent {
    echo "Initializing new SSH agent..."
    # spawn ssh-agent
    /usr/bin/ssh-agent | sed 's/^echo/#echo/' > "${SSH_ENV}"
    echo succeeded
    chmod 600 "${SSH_ENV}"
    . "${SSH_ENV}" > /dev/null
    /usr/bin/ssh-add
}

if [ -f "${SSH_ENV}" ]; then
     . "${SSH_ENV}" > /dev/null
     ps -ef | grep ${SSH_AGENT_PID} | grep ssh-agent$ > /dev/null || {
        start_agent;
    }
else
    start_agent;
fi

export PATH=/usr/local/bin:~/code/in_sys_path:$PATH
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.5/bin

# aliases
alias code='cd /Users/seb/code'
alias projects='cd /Users/seb/code/projects/'
alias cycad='cd /Users/seb/code/projects/cycad'
alias gtd='cd /Users/seb/GTD'
alias gtdapp='cd /Users/seb/code/projects/gtd'
alias seb='cd /Users/seb/code/sites/sebpearce.github.io'
alias l='ls -lah'
alias lsd='ls -l | grep ^d'

alias bashrc='nvim ~/.bashrc'
alias bashprofile='nvim ~/.bash_profile'
alias zshrc='nvim ~/.zshrc'
alias homeprofile='nvim ~/config-files/home_profile.sh'

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH

. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash
