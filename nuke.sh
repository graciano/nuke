#!/bin/bash
read -p "Are you sure? " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
  shred -rf ~/.config/
  shred -rf ~/.cache/
  shred -rf ~/.ssh/
  shred ~/.bash*
  shred -rf ~/Library/Application Support/Firefox/Profiles/
  shred -rf ~/Library/Mozilla/Firefox/Profiles/
  shred -rf ~/.mozilla/firefox/
  shred -rf ~/Library/Application Support/Google/Chrome/Profiles/
  shred -rf ~/.config/google-chrome/Default
  shred -rf ~/.cache/google-chrome
  shred -rf ~/Downloads/*
  shred -rf ~/Desktop/*
  shred -rf ~/Documents/*
  shred -rf ~/Library/Application\ Support/Franz/
  shred -rf ~/Library/Caches/*
fi
