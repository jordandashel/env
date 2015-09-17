#!/bin/bash

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
	apt-get install --yes curl zsh vim pandoc gnome-session-flashback
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

install_vundle_and_vim_plugins(){
	if [ ! -d $HOME/.vim/bundle/Vundle.vim ]; then
		git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
	fi
	vim +PluginInstall +qall
}

install_base16_shell(){
	if [ ! -d $HOME/.config/base16-shell ]; then
		git clone https://github.com/chriskempson/base16-shell.git $HOME/.config/base16-shell
	fi
}

install_oh_my_zsh(){
	curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh > $HOME/zsh_install.sh
	sh $HOME/zsh_install.sh

}

link_dot_files(){
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
	if [ -e $HOME/.zshrc ]; then
		rm $HOME/.zshrc
		ln -s $OG_DIR/.zshrc $HOME/.zshrc
	fi
	if [ -e $HOME/.gitconfig ]; then
		rm $HOME/.gitconfig
		ln -s $OG_DIR/.gitconfig $HOME/.gitconfig
	fi
}

# configure

populate_submodule
apt_install_programs
install_fonts
install_tmux
install_vundle_and_vim_plugins
install _base16_shell
install_oh_my_zsh
link_dot_files #must follow oh-my-zsh install or .zshrc will be clobbered 

