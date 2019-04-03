#!/bin/sh

set -eu

# if [ -d $HOME/.flutter ]
# then
#     mkdir -p $HOME/.flutter
# fi

ln -s /home/morphine/.flutter $HOME/.flutter

flutter test test/