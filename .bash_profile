#
# .bashrc
#

if [ -f ~/.bashrc ]; then
	source ~/.bashrc
fi

#
# .localbashrc:
#   system-specific setting,
#   env vars that shouldn't be checked in, etc.
#

if [ -f ~/.localbashrc ]; then
	source ~/.localbashrc
fi
