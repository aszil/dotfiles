set -x XDG_CONFIG_HOME $HOME/.config
set -x XDG_CACHE_HOME $HOME/.cache

set -x PATH $HOME/.nodebrew/current/bin $PATH

set -x ANDROID_HOME ~/library/android/sdk

set -Ux TERM xterm-color256

# sbt
set -g fish_user_paths "/usr/local/opt/sbt@0.13/bin" $fish_user_paths

# fzf
set -U FZF_LEGACY_KEYBINDINGS 0
set -U FZF_REVERSE_ISEARCH_OPTS "--reverse --height=100%"

# lazygit alias
alias lg 'lazygit'

# vim -> nvim
alias vim 'nvim'

# tmux alias
alias t 'tmux'

# tmux 自動起動
if test -z $TMUX
  tmux new-session
end

# dotfiles alias
alias dot 'cd ~/dotfiles'
alias init 'cd ~/dotfiles/nvim; and vim init.vim'
alias vish 'cd ~/dotfiles; and vim config.fish' 

# git alias
alias g 'git'

alias ga 'git add'

alias gb 'git branch'

alias gcm 'git commit -m'

alias gco 'git checkout'
alias gcb 'git checkout -b'

alias gf 'git fetch'

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
