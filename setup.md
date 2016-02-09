## XCode
```
$ xcode-select --install
```
## iTerm2

## MacPorts
Install [MacPorts](https://www.macports.org) open iTerm2 and run:
```bash
$ sudo port selfupdate
```

### Compilers
```bash
$ sudo port install gcc5
$ port select --list gcc
Available versions for gcc:
	mp-gcc5
	none (active)
$ sudo port select --set gcc gcc5
$ hash -r
$ sudo port install g95
```

### Python
Install proper Python 2.7, pip and virtualenv:
```bash
$ sudo port install python27
$ port select --list python
Available versions for python:
	none
	python26-apple
	python27
	python27-apple (active)
	python34
$ sudo port select --set python python27
$ sudo port install py27-pip
$ sudo port select --set pip pip27
$ sudo port install py27-virtualenv
$ sudo port select --set virtualenv virtualenv27
```
