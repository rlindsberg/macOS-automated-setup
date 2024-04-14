#!/usr/bin/env bash

# Disable sleep in Settings and hibernation in Command line using following commands

sudo pmset -a hibernatemode 0
sudo rm /var/vm/sleepimage
sudo mkdir /var/vm/sleepimage

# And it may be a good idea to disable the other hibernation related options:
sudo pmset -a standby 0
sudo pmset -a autopoweroff 0

# Run Apps from Anywhere
sudo spctl --master-disable
defaults write com.apple.Finder AppleShowAllFiles true

# Show hidden files
killall Finder
sleep 3
killall Finder

# Test NVRAM
sudo nvram TestVar=Hello$USER

# Setup git
git config --global user.name "rlindsberg"
echo Hello, what is your email for Github?
read user_email
git config --global user.email $user_email
