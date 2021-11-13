# Command

## Git

### Install
sudo apt-get install git

### Config
https://docs.microsoft.com/it-it/windows/wsl/tutorials/wsl-git
https://git-scm.com/book/it/v2/Git-on-the-Server-Generating-Your-SSH-Public-Key

## Programm
sudo apt install neovim

sudo apt-add-repository ppa:fish-shell/release-3
sudo apt-get update
sudo apt-get install fish

curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish

sudo apt-get install fzf

## Plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

## Tree sitter
:TSInstall html
:TSInstall css
:TSInstall javascript
:TSInstall json 
:TSInstall php
:TSInstall vue
:TSInstall rust
