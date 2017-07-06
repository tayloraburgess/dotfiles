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
# Git
#
export GIT_EDITOR=vim

#
# Python
#
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH

#
# Ruby
#
eval "$(rbenv init -)"

#
# Aliases
#
alias py=python3
alias spostgres="postgres -D /usr/local/var/postgres"
alias sredis="redis-server /usr/local/etc/redis.conf"
alias vimclean="find ./ -type f -name \"\.*sw[klmnop]\" -delete"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
