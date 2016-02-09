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
[user]
    name = $NAME
    email = $EMAIL
[credential]
    helper = osxkeychain
EOF

cat << EOF > $HOME/.gitexcludes
.DS_Store
EOF
