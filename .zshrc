# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="gnzh"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
#
# chucknorris not working -- invesigate
plugins=(git bundler command-not-found gem python randquote ruby sudo web-search)

# User configuration

# use virtualenvwrapper
#source /usr/local/bin/virtualenvwrapper.sh

#export PATH="/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"

# start tmux in 256
alias tmux="TERM=screen-256color tmux"

alias gitl="git log --oneline | head"

# # Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/scripts/base16-tomorrow.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL
let base16colorspace=256

export HISTCONTROL=ignoredups
export HISTSIZE=10000

setopt braceccl

# add path to $PATH
export PATH=~/bin:"$PATH"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting


# # use virtualenv for pip
# export pip_require_virtualenv=true

# # add global pip
# gpip(){
# 	   pip_require_virtualenv="" pip "$@"
# }

# zsh powerline
# decided i don't really care for powerline in the shell. might go back someday

# function _update_ps1()
# {
# 	export prompt="$(~/.powerline-zsh.py -m konsole $?)"
# }
# precmd()
# {
# 	_update_ps1
# }

# add virtualenvwrapper
#source /usr/local/bin/virtualenvwrapper.sh

if [[ -e ~/.zsh_private ]]; then
	source ~/.zsh_private
fi

if [[ -e ~/.zsh_local ]]; then
	source ~/.zsh_local
fi

alias fabjd="fab deploy:host=jdashel@jordandashel.com"
alias dfun="python manage.py test functional_tests"
alias amz="ssh -i ~/.ssh/MyFirstKey.pem ec2-user@52.207.246.4"

# Make some cool aliases
# /Alias Smith and Jones/
alias gs="git status"
alias ga="git add"
alias gl="git log --oneline | head"
alias gp="git push"
alias gpom="git push origin master"
alias gc="git commit"
alias gsh="git stash"
alias gpop="git stash pop"
alias gdiff="git diff"
alias v="vim" # Can we _get_ any lazier?
alias e='emacsclient'

eval "$(thefuck --alias)"
alias tree='tree -C'

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/aq35/.sdkman"
[[ -s "/Users/aq35/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/aq35/.sdkman/bin/sdkman-init.sh"
alias tnew="tmux new-session -s"
alias agp="ag --pager less"
alias tatt="tmux a -t"
alias today='date "+%m/%d/%Y"'
ed() { command ed -p\* "$@" ; }
