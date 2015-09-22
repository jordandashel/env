#!/bin/bash

# Setup script for a fresh debian-based machine.
# 
# Installs all my favorite programs and links my dotfiles.
#
# TODO: add support for RPM and pkg
# TODO: don't clobber existing dotfiles
# TODO: don't reinstall tmux _every_ time
# TODO: COLORS!

OG_DIR=$PWD

if [ "$(whoami)" != "root" ]; then
	echo "superuser status required:"
	echo "sudo $0 $*"
	exit 1
fi

# -- FUNCTIONS -- #

populate_submodule(){
	git submodule init
	git submodule update
}

apt_install_programs(){
	apt-get install --yes build-essential
	apt-get install --yes libevent-dev libncurses-dev 
	# my favorite/essential utilities
	apt-get install --yes curl zsh vim vim-gnome pandoc gnome-session-flashback lynx guake
}

install_fonts(){
	sh $OG_DIR/pl_fonts/install.sh
}

install_tmux(){
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

	cd $OG_DIR
}

install_vundle(){
	if [ ! -d $HOME/.vim/bundle/Vundle.vim ]; then
		git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
	fi
}

install_base16_shell(){
	if [ ! -d $HOME/.config/base16-shell ]; then
		git clone https://github.com/chriskempson/base16-shell.git $HOME/.config/base16-shell
	fi
}

install_oh_my_zsh(){
	if [ ! -d $HOME/.oh-my-zsh ]; then
		git clone git://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh
	fi
	chsh -s /bin/zsh
}

link_dot_files(){
	echo "linking files"
	if [ -e $HOME/.tmux.conf ]; then
		rm $HOME/.tmux.conf
	fi
	if [ -e $HOME/.vimrc ]; then 
		rm $HOME/.vimrc
	fi
	if [ -e $HOME/.bashrc ]; then 
		rm $HOME/.bashrc
	fi
	if [ -e $HOME/.zshrc ]; then
		rm $HOME/.zshrc
	fi
	if [ -e $HOME/.gitconfig ]; then
		rm $HOME/.gitconfig
	fi

	ln -s $OG_DIR/.tmux.conf $HOME/.tmux.conf
	ln -s $OG_DIR/.vimrc $HOME/.vimrc
	ln -s $OG_DIR/.bashrc $HOME/.bashrc
	ln -s $OG_DIR/.zshrc $HOME/.zshrc
	ln -s $OG_DIR/.gitconfig $HOME/.gitconfig
}

# configure

echo "\n\n\nsubmodule populate\n\n\n" && \
populate_submodule && \
echo "\n\n\ninstall programs\n\n\n" && \
apt_install_programs && \
echo "\n\n\ninstall fonts\n\n\n" && \
install_fonts && \
echo "\n\n\ninstall tmux\n\n\n" && \
install_tmux && \
echo "\n\n\ninstall vundle\n\n\n" && \
install_vundle && \
vim +PluginInstall +qall && \
echo "\n\n\ninstall base_16\n\n\n" && \
install_base16_shell && \
echo "\n\n\ninstall oh-my-zsh\n\n\n" && \
install_oh_my_zsh && \
echo "\n\n\nlink dot files\n\n\n" && \
link_dot_files 
