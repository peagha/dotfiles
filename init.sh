test -f /opt/boxen/env.sh && source /opt/boxen/env.sh
# eval "$(hub alias -s)"

root="$(cd $(dirname "${BASH_SOURCE[0]}"); pwd)"

completion="$(brew --prefix)/etc/bash_completion"
if [ -f $completion ]; then
  . $completion
fi

for path in $HOME/src/*; do
  export CDPATH="$CDPATH:$path"
done

for path in $HOME/src/private/*; do
  export CDPATH="$CDPATH:$path"
done


export PATH="$HOME/bin:$root/bin:$PATH"
# export EDITOR="atom -w -n"
# export ATOM_REPOS_HOME="$HOME/code/github"

test -f ~/.secrets.sh && source ~/.secrets.sh
source $root/scripts/prompt.sh
# source $root/scripts/aliases.sh
