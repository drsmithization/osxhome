#!/usr/bin/env bash

set -ex

sudo port selfupdate
sudo port install gcc5
sudo port select --set gcc mp-gcc5
hash -r
sudo port install g95

sudo port install python27
sudo port select --set python python27
sudo port install py27-pip
sudo port select --set pip pip27
sudo port install py27-virtualenv
sudo port select --set virtualenv virtualenv27

sudo port install bash-completion

sudo port install git +bash_completion
