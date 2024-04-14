# Setting up for macOS

## 1. OS fixes
```
bash mac.sh
```

## 2. Settings
1. Search "Trackpad"
- toggle Tap to click
- in More Gestures, enable App Exposé (four fingers)

2. Search "drag"
- Toggle Use trackpad for dragging, choose Dragging style (three fingers)

## 3. Git
- Open Terminal and type git. Follow installer.

## 4. Install homebrew
```
cd
mkdir homebrew && curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C homebrew
export PATH=$HOME/homebrew/bin:$PATH
```

## 5. Install zsh (an alternative to bash)
```
brew install zsh
```

## 6. Install oh my zsh
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
```

## 7. Install fonts
```
cd macOS-automated-setup
open fonts/*
```
