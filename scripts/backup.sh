#!/bin/sh




echo '... saving global npm package list'
ls `/Users/paul/.nvm/versions/node/v6.7.0/bin/npm root -g` > /Users/paul/.packages-node-global

echo '... saving brew taps'
/usr/local/bin/brew tap > /Users/paul/.packages-brew-taps

echo '... saving brew list'
/usr/local/bin/brew list > /Users/paul/.packages-brew

echo '... saving brew cask list'
/usr/local/bin/brew cask list > /Users/paul/.packages-brew-cask

echo '... saving mac applications list'
ls /Applications > /Users/paul/.packages-apple-applications

echo '... backing up .dotfiles'
/usr/local/bin/mackup backup -f
/usr/local/bin/mackup uninstall -f

sudo chmod a+x ~/*.sh

