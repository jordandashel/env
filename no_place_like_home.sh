#!/bin/bash

OG_DIR=$PWD

if [ "$(whoami)" != "root" ]; then
  echo "sudo required:"
  echo "sudo $0 $*"
  exit 1
fi

apt-get install --yes build-essential
apt-get install --yes libevent-dev libncurses-dev 
# my favorite/essential utilities
apt-get install --yes curl zsh vim pandoc

# -- SETTINGS --

git config merge.tool vimdiff
git config merge.conflictstyle diff3
git config mergetool.prompt false

if [ -e $HOME/.tmux.conf ]; then
  rm $HOME/.tmux.conf
  ln -s $OG_DIR/.tmux.conf $HOME/.tmux.conf
fi
if [ -e $HOME/.vimrc ]; then 
  rm $HOME/.vimrc
  ln -s $OG_DIR/.vimrc $HOME/.vimrc
fi
if [ -e $HOME/.bashrc ]; then 
  rm $HOME/.bashrc
  ln -s $OG_DIR/.bashrc $HOME/.bashrc
fi

sh $OG_DIR/pl_fonts/install.sh

cd $HOME/
if [ -e tmux-2.0.tar.gz ]; then
  rm $HOME/tmux-2.0.tar.gz
fi
if [ -d tmux-2.0 ]; then 
  rm -rf $HOME/tmux-2.0
fi
wget https://github.com/tmux/tmux/releases/download/2.0/tmux-2.0.tar.gz && \
tar -zxvf tmux-2.0.tar.gz && \
cd tmux-2.0 && \
./configure && \
make && \
make install

if [ ! -d $HOME/.vim/bundle/Vundle.vim ]; then
  git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
fi
vim +PluginInstall +qall

if [ ! -d $HOME/.config/base16-shell ]; then
  git clone https://github.com/chriskempson/base16-shell.git $HOME/.config/base16-shell
fi

curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh > $HOME/zsh_install.sh
sh $HOME/zsh_install.sh

if [ -e $HOME/.zshrc ]; then
  rm $HOME/.zshrc
  ln -s $OG_DIR/.zshrc $HOME/.zshrc
fi

cd $OG_DIR
