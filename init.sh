eval "$(rbenv init -)"

# Enable bash_completion
completion="$(brew --prefix)/etc/bash_completion"
if [ -f $completion ]; then
  . $completion
fi

# Add ~/Code/ folders cd shortcut
for path in $HOME/Code/{me,oss,work,}; do
  export CDPATH="$CDPATH:$path"
done

# Add project-specific binstubs to PATH (rbenv)
# https://github.com/rbenv/rbenv/wiki/Understanding-binstubs#adding-project-specific-binstubs-to-path
export PATH="./bin:$PATH"

# Load scripts
root="$(cd $(dirname "${BASH_SOURCE[0]}"); pwd)"
source $root/scripts/prompt.sh
source $root/scripts/aliases.sh

# Remove zsh warning
export BASH_SILENCE_DEPRECATION_WARNING=1
