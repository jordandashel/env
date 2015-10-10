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
USER_HOME=$(eval echo ~$SUDO_USER)

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
	apt-get --yes update
	apt-get --yes upgrade
	apt-get install --yes build-essential
	apt-get install --yes libevent-dev libncurses-dev 
	# my favorite/essential utilities
	apt-get install --yes curl zsh vim vim-gnome pandoc gnome-session-fallback lynx guake
}

install_fonts(){
	sh $OG_DIR/pl_fonts/install.sh
}

install_tmux(){
	cd $USER_HOME/

	if [ -e tmux-2.0.tar.gz ]; then
		rm $USER_HOME/tmux-2.0.tar.gz
	fi
	if [ -d tmux-2.0 ]; then 
		rm -rf $USER_HOME/tmux-2.0
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
	if [ ! -d $USER_HOME/.vim/bundle/Vundle.vim ]; then
		git clone https://github.com/VundleVim/Vundle.vim.git $USER_HOME/.vim/bundle/Vundle.vim
	fi
}

install_base16_shell(){
	if [ ! -d $USER_HOME/.config/base16-shell ]; then
		git clone https://github.com/chriskempson/base16-shell.git $USER_HOME/.config/base16-shell
	fi
}

install_oh_my_zsh(){
	if [ ! -d $USER_HOME/.oh-my-zsh ]; then
		git clone git://github.com/robbyrussell/oh-my-zsh.git $USER_HOME/.oh-my-zsh
	fi
	chsh -s /bin/zsh
}

link_dot_files(){
	echo "linking files"
	if [ -e $USER_HOME/.tmux.conf ]; then
		rm $USER_HOME/.tmux.conf
	fi
	if [ -e $USER_HOME/.vimrc ]; then 
		rm $USER_HOME/.vimrc
	fi
	if [ -e $USER_HOME/.bashrc ]; then 
		rm $USER_HOME/.bashrc
	fi
	if [ -e $USER_HOME/.zshrc ]; then
		rm $USER_HOME/.zshrc
	fi
	if [ -e $USER_HOME/.gitconfig ]; then
		rm $USER_HOME/.gitconfig
	fi

	ln -s $OG_DIR/.tmux.conf $USER_HOME/.tmux.conf
	ln -s $OG_DIR/.vimrc $USER_HOME/.vimrc
	ln -s $OG_DIR/.bashrc $USER_HOME/.bashrc
	ln -s $OG_DIR/.zshrc $USER_HOME/.zshrc
	ln -s $OG_DIR/.gitconfig $USER_HOME/.gitconfig
}

link_ftplugin_files(){
	FTPLUGIN_PATH=$USER_HOME/.vim/after/ftplugin
	mkdir --parents $FTPLUGIN_PATH 
	rm $FTPLUGIN_PATH/*
	ln -s $OG_DIR/* $FTPLUGIN_PATH/
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
