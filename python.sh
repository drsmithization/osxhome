#!/usr/bin/env bash

set -ex

source $(dirname $0)/config.sh


mkdir -p ~/.virtualenvs ~/.pip
cd ~/.virtualenvs
virtualenv $DEFAULT_VIRTUALENV

export VIRTUALENV_DISTRIBUTE=true
export PIP_VIRTUALENV_BASE=$HOME/.virtualenvs
export PIP_REQUIRE_VIRTUALENV=true
export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache
source $HOME/.virtualenvs/$DEFAULT_VIRTUALENV/bin/activate

pip install --upgrade pip
pip install numpy
pip install scipy
pip install pandas
pip install sklearn
pip install matplotlib
pip install seaborn
pip install jupyter
