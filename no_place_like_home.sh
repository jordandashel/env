#!/bin/bash

# Setup script for a fresh debian-based machine.
# 
# Installs all my favorite programs and links my dotfiles.
#
# TODO: add support for RPM and pkg
# TODO: don't clobber existing dotfiles
# TODO: don't reinstall tmux _every_ time
# TODO: COLORS! --workinonit

OG_DIR=$PWD
USER_HOME=$(eval echo ~$SUDO_USER)

if [ "$(whoami)" != "root" ]; then
	echo "superuser status required:"
	echo "sudo $0 $*"
	exit 1
fi

. setup_functions.sh

print_yellow "install programs" 
apt_install_programs 

sudo -u $SUDO_USER bash <<EOF

print_yellow "submodule populate" 
populate_submodule 

print_yellow "global pip installations"
pip_installs

print_yellow "install fonts" 
install_fonts 

print_yellow "install tmux" 
install_tmux 

print_yellow "link dot files" 
link_dot_files 

print_yellow "link ftplugin" 
link_ftplugin_files

print_yellow "install vundle" 
install_vundle 
vim +PluginInstall +qall 

print_yellow "install base_16" 
install_base16_shell 

print_yellow "install oh-my-zsh" 
install_oh_my_zsh 

EOF

chsh $SUDO_USER -s /bin/zsh
