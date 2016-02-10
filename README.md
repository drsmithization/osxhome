# osxhome

```bash
$ git clone --recursive https://github.com/drsmithization/osxhome.git ~/.osxhome
$ ln -s ~/.osxhome/dotvim/ ~/.vim
$ ln -s ~/.osxhome/dotvim/.vimrc ~/.vimrc
```

```bash
$ cd ~/.osxhome
```

#### Install ports
```bash
$ ./ports.sh
```

You need to change the command iTerm2 uses to launch the shell in the appropriate profile in the preferences:

1. Menu > Preferences > Profiles tab
2. Select your profile, on the right switch to the General tab, see "Command"
3. Select "Command:" and enter /opt/local/bin/bash -l
4. Close and reopen any terminal windows
5. Add /opt/local/bin/bash to the file /etc/shells

#### Setup git
```bash
$ ./git.sh
```

add to your ~/.profile:
```bash
source ~/.osxhome/bash/dotbashrc.sh
```
