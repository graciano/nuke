#!/bin/bash
read -p "Are you sure? " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
  rm -rf ~/.config/
  rm -rf ~/.cache/
  rm -rf ~/.ssh/
  rm ~/.bash*
fi

