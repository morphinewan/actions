#!/bin/sh

set -eu

if [ -d $HOME/.flutter ]
then
    mkdir -p $HOME/.flutter
fi

flutter test test/