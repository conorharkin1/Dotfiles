#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

shopt -s cdspell
shopt -s autocd

alias ls='ls --color=auto'
alias la='ls -A'

alias grep='grep --color=auto'
alias cat='bat --paging=never'

# Git aliases
alias gs="git status"
alias ga="git add"
alias gc="git commit"
alias gp="git push"
alias gl="git log --oneline --graph --all"


PS1='[\u@\h \W]\$ '

source /usr/share/bash-completion/bash_completion

# Command line decoration
eval "$(starship init bash)"

# The 'cat command alternative' theme
export BAT_THEME=TwoDark

export PATH export PATH="$PATH:/home/conor/.dotnet/tools"

. /usr/share/nvm/init-nvm.sh
export PATH="$HOME/.local/bin:$PATH"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
