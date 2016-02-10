# osxhome

```bash
$ git clone --recursive https://github.com/drsmithization/osxhome.git ~/.osxhome
$ ln -s ~/.osxhome/dotvim/ ~/.vim
$ ln -s ~/.osxhome/dotvim/.vimrc ~/.vimrc
```

```bash
$ cd ~/.osxhome
```
#### install ports
```bash
$ ./ports.sh
```

#### setup git
```bash
$ ./git.sh
```

add to your ~/.profile:
```bash
source ~/.osxhome/bash/dotbashrc.sh
```
