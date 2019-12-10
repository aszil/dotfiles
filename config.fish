set -x XDG_CONFIG_HOME $HOME/.config
set -x XDG_CACHE_HOME $HOME/.cache

set -x PATH $HOME/.nodebrew/current/bin $PATH

set -x ANDROID_HOME /Users/ci_arai/Library/Android/sdk

set -Ux TERM xterm-color256

# fzf
set -U FZF_LEGACY_KEYBINDINGS 0
set -U FZF_REVERSE_ISEARCH_OPTS "--reverse --height=100%"


# vim -> nvim
alias vim 'nvim'

# tmux alias
alias t 'tmux'


# git alias
alias g 'git'

alias ga 'git add'
alias ga. 'git add .'

alias gb 'git branch'

alias gcm 'git commit -m'

alias gco 'git checkout'
alias gcb 'git checkout -b'

alias gll 'git pull origin'
alias gsh 'git push origin'

alias gst 'git status'

alias gsts 'git stash save'
alias gsta 'git stash apply'
alias gstc 'git stash clear'
alias gstd 'git stash drop'
alias gstl 'git stash list'
alias gstp 'git stash pop'

functions --copy cd standard_cd

function cd
  standard_cd $argv; and ls
end
