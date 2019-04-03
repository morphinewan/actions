#!/bin/sh

set -eu

# if [ -d $HOME/.flutter ]
# then
#     mkdir -p $HOME/.flutter
# fi

ls -lah /home/morphine

ln -s $HOME/.flutter /home/morphine/.flutter

flutter test test/