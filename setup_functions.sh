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
	# installing each individually in case one fails
	programs=(
		curl
		emacs
		gnome-session-flashback
		gnome-tweak-tool
		guake
		lynx
		pandoc
		python3 
		python-pip
		vim
		vim-gnome
		zsh
	)

	for program in "${programs[@]}"
	do
		apt-get install --yes program
	done
}

pip_installs(){
	pip install virtualenv virtualenvwrapper rope ipython ipdb
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

install_powerline_for_zsh(){
	ln -s $OG_DIR/powerline-zsh/powerline-zsh.py $USER_HOME/.powerline-zsh.py
}

install_oh_my_zsh(){
	if [ ! -d $USER_HOME/.oh-my-zsh ]; then
		git clone git://github.com/robbyrussell/oh-my-zsh.git $USER_HOME/.oh-my-zsh
	fi
}

link_dot_files(){

	dotfiles=( .tmux.conf .vimrc .bashrc .zshrc .gitconfig )

	for file in "${dotfiles[@]}"
	do
		if [ -e $USER_HOME/$file ]; then
			rm $USER_HOME/$file
		fi

		ln -s $OG_DIR/$file $USER_HOME/$file
	done

	dotdirectories=( .emacs.d .ssh org )
	for dir in "${dotdirectories[@]}"
	do
		if [ -d $USER_HOME/$dir ]; then
			rm -rf $USER_HOME/$dir
		fi

		ln -s $OG_DIR/$dir $USER_HOME/$dir
	done
}

link_ftplugin_files(){
	FTPLUGIN_PATH=$USER_HOME/.vim/ftplugin
	mkdir --parents $FTPLUGIN_PATH 
	rm $FTPLUGIN_PATH/*
	ln -s $OG_DIR/* $FTPLUGIN_PATH/
}

print_yellow(){
	echo -e "\033[1;34m$1\033[0m"
}
