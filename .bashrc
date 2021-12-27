#
# Display
#
export PS1="≠ \W $ "

#
# brew
#
eval "$(/opt/homebrew/bin/brew shellenv)"


#
# Bash Completion
#
if [ -f $(brew --prefix)/etc/bash_completion ]; then
	. $(brew --prefix)/etc/bash_completion
fi

#
# pyenv
#
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

#
# nvm
#
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#
# Etc
#
HISTTIMEFORMAT="%d/%m/%y %T "
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
export BASH_SILENCE_DEPRECATION_WARNING=1
