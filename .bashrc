# .bashrc

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

export BLOCK_SIZE=human-readable
export EDITOR=nvim

export PATH="$PATH:${HOME}/bin:${HOME}/.npm-global/bin"

# Source global definitions
if [[ -f /etc/bashrc ]]; then
    source /etc/bashrc
fi

# rlwrap
export RLWRAP_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}"

# nvim
alias vi=nvim
alias vim=nvim

# git
alias gl="git log --oneline --no-merges"

# Vim mode
# set -o vi

# bash-git-prompt
if [[ -d "${HOME}/.bash-git-prompt" ]]; then
    GIT_PROMPT_ONLY_IN_REPO=1
    source "${HOME}/.bash-git-prompt/gitprompt.sh"
fi

