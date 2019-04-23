#!/bin/bash
FILES=(
  "~/.config/"
  "~/.cache/"
  "~/.ssh/"
  "bash*"
  "~/Library/Application Support/Firefox/Profiles/"
  "~/Library/Mozilla/Firefox/Profiles/"
  "~/.mozilla/firefox/"
  "~/Library/Application Support/Google/Chrome/Profiles/"
  "~/.config/google-chrome/Default"
  "~/.cache/google-chrome"
  "~/Downloads/*"
  "~/Desktop/*"
  "~/Documents/*"
  "~/Library/Application\ Support/Franz/"
  "~/Library/Caches/*"
)
read -p "Are you sure? " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
  for pattern in "${FILES[@]}"
  do
    shred $pattern
    rm -rf $pattern
  done
fi
