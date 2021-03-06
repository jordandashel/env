set nocompatible              " be iMproved, required
filetype off                  " required


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-abolish'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-endwise'
"Plugin 'vim-ruby/vim-ruby'
Plugin 'wikitopian/hardmode'
Plugin 'tpope/vim-sleuth'
Plugin 'closetag.vim'
Plugin 'tpope/vim-unimpaired'
Plugin 'flazz/vim-colorschemes'
Plugin 'felixhummel/setcolors.vim'
"Plugin 'chriskempson/base16-vim'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-commentary'
Plugin 'mtth/scratch.vim'
Plugin 'tpope/vim-speeddating'
Plugin 'majutsushi/tagbar'
Plugin 'easymotion/vim-easymotion'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
Plugin 'tfnico/vim-gradle'
Plugin 'mileszs/ack.vim'
Plugin 'godlygeek/tabular'
Plugin 'sjl/gundo.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" URL: http://vim.wikia.com/wiki/Example_vimrc
" Authors: http://vim.wikia.com/wiki/Vim_on_Freenode
" Description: A minimal, but feature rich, example .vimrc. If you are a
"              newbie, basing your first .vimrc on this file is a good choice.
"              If you're a more advanced user, building your own .vimrc based
"              on this file is still a good idea.
 
"------------------------------------------------------------
" Features {{{1
"
" These options and commands enable some very useful features in Vim, that
" no user should have to live without.
 
" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible
 
" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on
 
" Enable syntax highlighting
syntax on 
 
"------------------------------------------------------------
" Must have options {{{1
"
" These are highly recommended options.
 
" Vim with default settings does not allow easy switching between multiple files
" in the same editor window. Users can use multiple split windows or multiple
" tab pages to edit multiple files, but it is still best to enable an option to
" allow easier switching between files.
"
" One such option is the 'hidden' option, which allows you to re-use the same
" window and switch from an unsaved buffer without saving it first. Also allows
" you to keep an undo history for multiple files when re-using the same window
" in this way. Note that using persistent undo also lets you undo in multiple
" files even in the same window, but is less efficient and is actually designed
" for keeping undo history after closing Vim entirely. Vim will complain if you
" try to quit without saving, and swap files will keep you safe if your computer
" crashes.
set hidden
 
" Note that not everyone likes working this way (with the hidden option).
" Alternatives include using tabs or split windows instead of re-using the same
" window as mentioned above, and/or either of the following options:
" set confirm
" set autowriteall
 
" Better command-line completion
set wildmenu
 
" Show partial commands in the last line of the screen
set showcmd
 
" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
set hlsearch
 
" Modelines have historically been a source of security vulnerabilities. As
" such, it may be a good idea to disable them and use the securemodelines
" script, <http://www.vim.org/scripts/script.php?script_id=1876>.
" set nomodeline
 
 
"------------------------------------------------------------
" Usability options {{{1
"
" These are options that users frequently set in their .vimrc. Some of them
" change Vim's behaviour in ways which deviate from the true Vi way, but
" which are considered to add usability. Which, if any, of these options to
" use is very much a personal preference, but they are harmless.
 
" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase
 
" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start
 
" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent
 
" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
set nostartofline
 
" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler
 
" Always display the status line, even if only one window is displayed
set laststatus=2
 
" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm
 
" Use visual bell instead of beeping when doing something wrong
set visualbell
 
" And reset the terminal code for the visual bell. If visualbell is set, and
" this line is also included, vim will neither flash nor beep. If visualbell
" is unset, this does nothing.
set t_vb=
 
" Enable use of the mouse for all modes
"set mouse=a
 
" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
set cmdheight=2
 
" Display line numbers on the left
set number
 
" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200
 
" Use <F11> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F11>
 
 
"------------------------------------------------------------
" Indentation options {{{1
"
" Indentation settings according to personal preference.
 
" Indentation settings for using 4 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
"set shiftwidth=2
"set softtabstop=2
"set expandtab
 
" Indentation settings for using hard tabs for indent. Display tabs as
" four characters wide.
set shiftwidth=8
set tabstop=8

"colorscheme 1989
colorscheme tomorrow
 
 
"------------------------------------------------------------
" Mappings {{{1
"
" Useful mappings
 
" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
" which is the default
map Y y$
 
" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <C-N> :nohl<CR><C-L>
 
nnoremap <C-H> <C-W>h
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l

" finally added multiline traversal
nnoremap j gj
nnoremap k gk

"------------------------------------------------------------

" Filetype specific indentation
filetype plugin indent on

" using ftplugin folder
" autocmd FileType ruby setlocal shiftwidth=2 tabstop=2 noexpandtab
" autocmd FileType html setlocal shiftwidth=2 tabstop=2 noexpandtab

" Dispatch file associations
autocmd FileType python let b:dispatch='python -m "nose"'

" Kick off dispatch
nnoremap <F9> :Dispatch<CR>

" set line highlight
set cursorline

" redraw only when necessary (faster macros)
set lazyredraw

" enable folding
set foldenable
set foldlevelstart=99
nnoremap <leader>z za
set foldmethod=indent

" open splits below and to the right
set splitbelow
set splitright

" decent swapfile handling
set swapfile
set directory=~/tmp,.
set backupdir=~/tmp,.

" Source vimrc
nnoremap <leader>v :source $MYVIMRC<CR>

set t_Co=256
let base16colorspace=256

set background=light

"Keeps visual selection after changing indent

vmap > >gv
vmap < <gv


let g:airline_powerline_fonts=1

if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Meslo\ LG\ S\ for\ Powerline:h13
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
else
  set guifont=LiberationMono
endif

let g:airline_powerline_fonts = 1
let g:airline_theme='cool'

let mapleader="\\"
set showcmd

" Amount of time after pressing leader in which another key can follow
" Default 1000
" set timeoutlen=1500

nnoremap <Space> :
nnoremap <Space> :

nnoremap <leader>n :NERDTree<CR>

" Incremental search

set ignorecase
set smartcase
set incsearch

" Show Whitespace
set listchars=tab:▸\ ,eol:¬,space:·
"set list

" WhiteSpace shortcut
nmap <leader>w :set list!<CR>

if &diff
else
	" Syntastic recommended settings
	set statusline+=%#warningmsg#
	set statusline+=%{SyntasticStatuslineFlag()}
	set statusline+=%*

	let g:syntastic_always_populate_loc_list = 0
	let g:syntastic_auto_loc_list = 0
	let g:syntastic_check_on_open = 1
	let g:syntastic_check_on_wq = 0
endif

" display syntastic errors
nnoremap <F12> :Errors<CR>

" languages
"let g:syntastic_javascript_checkers=['jshint']
" let g:syntastic_python_checkers=['python3']
" let g:syntastic_python_python_exec = '/usr/local/bin/python3'

" Show registers
nnoremap <C-g> :reg<CR>

" command history
nnoremap q<Space> q:

" Undo settings
"set undofile "undo history persists across vim sessions " Buffer work
nnoremap <C-B> :buffers<CR>:b<Space>

" Easy close 
nnoremap <F10> :cclose<CR>

" Scratch set to markdown for fenced highlighting
let g:scratch_filetype = 'markdown'
let g:scratch_no_mappings = 1
nnoremap gs :Scratch<CR>

" markdown fencing
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
let g:markdown_fenced_languages = ['c', 'python', 'javascript']

" automatically change window's cwd to file's dir
set autochdir

" Tagbar
nmap <F8> :TagbarToggle<CR>

nnoremap <F5> :GundoToggle<CR>

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

nnoremap <leader>. :CtrlPTag<cr>

" ctrl p settings
let g:ctrlp_by_filename = 1

" find the nearest tag file
set tags=tags;/
let g:easytags_dynamic_fies = 1

nnoremap <silent> <buffer> <leader>i :JavaImport<cr>
nnoremap <silent> <buffer> <leader>d :JavaDocSearch<cr>
nnoremap <silent> <buffer> <cr> :JavaSearchContext<cr>

" Soft wrap lines with a single command (credit Drew Neil)
command! -nargs=* Wrap set wrap linebreak nolist
 
set nobackup

nnoremap <leader>l :set list!<CR>

nnoremap <leader>c :nohl<CR>

set scrolloff=5
