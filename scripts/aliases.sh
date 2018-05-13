alias reload='source ~/.profile'
alias ls='ls -AlhF'

alias ql='qlmanage -p "$@" >& /dev/null'

alias spotlighton='sudo mdutil -a -i on'
alias spotlightoff='sudo mdutil -a -i off'
alias desktopon='defaults write com.apple.finder CreateDesktop -bool true && killall Finder'
alias desktopoff='defaults write com.apple.finder CreateDesktop -bool false && killall Finder'

alias pcat='pygmentize -O style=tango -f console256 -g'
