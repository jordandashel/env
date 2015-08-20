#!/bin/bash

OG_DIR=$PWD

if [[ $UID != 0 ]]; then
  echo "sudo required"
  echo "sudo $0 $*"
  exit 1
fi

apt-get install build-essential
apt-get install libevent-dev libncurses-dev curl zsh

sh $OG_DIR/pl_fonts/install.sh

cd ~/
if [ -e tmux-2.0.tar.gz ]; then
  rm ~/tmux-2.0.tar.gz
fi
if [ -d tmux-2.0 ]; then 
  rm -rf ~/tmux-2.0
fi
wget https://github.com/tmux/tmux/releases/download/2.0/tmux-2.0.tar.gz
tar -zxvf tmux-2.0.tar.gz
cd tmux-2.0
./configure
make
make install

if [ ! -d ~/.vim/bundle/Vundle.vim ]; then
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
vim +PluginInstall +qall

if [ ! -d ~/.config/base16-shell ]; then
  git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
fi

curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh > ./zsh_install.sh
sh ./zsh_install.sh
chsh -s /bin/zsh

if [ -e ~/.tmux.conf ]; then
  rm ~/.tmux.conf
fi
if [ -e ~/.zshrc ]; then
  rm ~/.zshrc
fi
if [ -e ~/.vimrc ]; then 
  rm ~/.vimrc
fi
if [ -e ~/.bashrc ]; then 
  rm ~/.bashrc
fi

ln -s $OG_DIR/.tmux.conf ~/.tmux.conf
ln -s $OG_DIR/.zshrc ~/.zshrc
ln -s $OG_DIR/.vimrc ~/.vimrc
ln -s $OG_DIR/.bashrc ~/.bashrc

cd $OG_DIR
