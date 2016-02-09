# bash-completion
if [ -f /opt/local/etc/profile.d/bash_completion.sh ]; then
    . /opt/local/etc/profile.d/bash_completion.sh
fi

# You need to change the command iTerm2 uses to launch the shell in the appropriate profile in the preferences.
#
# 1. Menu > Preferences > Profiles tab
# 2. Select your profile, on the right switch to the General tab, see "Command"
# 3. Select "Command:" and enter /opt/local/bin/bash -l
# 4. Close and reopen any terminal windows
#
# Add /opt/local/bin/bash to the file /etc/shells
