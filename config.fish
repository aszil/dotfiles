set -x PATH $HOME/.nodebrew/current/bin $PATH

set -x ANDROID_HOME /Users/ci_arai/Library/Android/sdk


# git alias
alias g 'git'

alias ga 'git add'
alias ga. 'git add .'

alias gb 'git branch'

alias gcmsg 'git commit -m'

alias gco 'git checkout'
alias gcb 'git checkout -b'

alias ggpull 'git pull origin'
alias ggpush 'git push origin'

alias gst 'git status'

alias gsts 'git stash save'
alias gsta 'git stash apply'
alias gstc 'git stash clear'
alias gstd 'git stash drop'
alias gstl 'git stash list'
alias gstp 'git stash pop'
