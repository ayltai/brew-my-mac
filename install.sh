#!/bin/bash
set -u

printf '\e[8;50;120t'

echo 'Checking if Xcode command line tools are installed ...'
if !(type xcode-select >&- && path=$(xcode-select --print-path) && test -d "$path" && test -x "$path"); then
  echo 'Installing Xcode command line tools ...'
  xcode-select --install
fi

git clone https://github.com/ayltai/brew-my-mac.git
cd brew-my-mac
./run.sh && cd - && rm -rf brew-my-mac
