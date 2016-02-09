#!/usr/bin/env bash

set -ex

source $(dirname $0)/config.sh

cat << EOF > $HOME/.gitconfig
[color]
    branch = auto
    diff = auto
    status = auto
[color "branch"]
    current = yellow reverse
    local = yellow
    remote = green
[color "diff"]
    meta = yellow bold
    frag = magenta bold
    old = red bold
    new = green bold
[color "status"]
    added = yellow
    changed = green
    untracked = cyan
EOF

cat << EOF > $HOME/.gitexcludes
.DS_Store
EOF

git config --global user.name "$NAME"
git config --global user.email $EMAIL
