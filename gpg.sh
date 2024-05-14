# https://gist.github.com/troyfontaine/18c9146295168ee9ca2b30c00bd1b41e
#!/usr/bin/env zsh

brew install gpg2 gnupg pinentry-mac

mkdir ~/.gnupg

echo "pinentry-program $(brew --prefix)/bin/pinentry-mac" > ~/.gnupg/gpg-agent.conf

echo 'use-agent' > ~/.gnupg/gpg.conf

echo "export GPG_TTY=\$(tty)"  | tee -a ~/.zshrc

source ~/.zshrc

chmod 700 ~/.gnupg

killall gpg-agent
