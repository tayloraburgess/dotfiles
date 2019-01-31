#
# Display
#
export PS1="≠ \W $ "

#
# Brew
#
if [ -f $(brew --prefix)/etc/bash_completion ]; then
	. $(brew --prefix)/etc/bash_completion
fi

#
# Python
#
export PATH=/usr/local/opt/python/libexec/bin:$PATH

#
# Etc
#
HISTTIMEFORMAT="%d/%m/%y %T "
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
