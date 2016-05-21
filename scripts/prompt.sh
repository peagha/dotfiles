function git_mail_identifier() {
  local work=$(git config user.email | grep plataformatec)
  if [[ -z $work ]]; then
    # :zap:
    echo -n '⚡'
  else
    # :office:
    echo -n '🏢'
  fi
}

function set_ps1() {
  # Non printable chars must be surrounded by \[\]
  # otherwise the console won't be able to calculate the line width
  # and it won't break the first line correctly
  local red="\[\e[1;31m\]"
  local beige="\[\e[1;33m\]"
  local reset="\[\e[00m\]"

  local git_branch=$(__git_ps1)
  local current_ruby=$(rbenv version-name)

  export PS1="\`git_mail_identifier\`  \W | ${red}${current_ruby} ${beige}${git_branch} ${reset}$ "
}

set_ps1
