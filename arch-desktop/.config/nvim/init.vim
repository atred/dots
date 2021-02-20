" Neovim Config

" Get plug (courtesy of Luke Smith)
if ! filereadable(expand('~/.config/nvim/autoload/plug.vim'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ~/.config/nvim/autoload
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ~/.config/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif

" Plug
call plug#begin('~/.vim/plugged')
Plug 'arcticicestudio/nord-vim'
Plug 'itchyny/lightline.vim'
call plug#end()

" Basics
set history=100
filetype plugin on
filetype indent on
set autoread
syntax on
set ruler

" Tabs
set noautoindent
set shiftwidth=4
set softtabstop=4
set expandtab

" Completion
set wildmode=longest,list,full
set wildmenu
set wildignore=*.o,*~,*.pyc,*.javac
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
set path+=**

" Linum
set number
set numberwidth=4
set relativenumber

" Search
set ignorecase
set smartcase

" Remove annoying sounds
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" No backups or swap files
set nobackup
set noswapfile
set nowb

" Line wrap
set wrap

" Change parenthesis highlighting color
hi MatchParen cterm=bold ctermbg=none ctermfg=magenta

" C programming
" autocmd FileType c nnoremap <F5> :w<Enter>:!gcc %<Enter>

" Colors
colorscheme nord
let g:lightline = {}
let g:lightline.colorscheme = 'nord'
set laststatus=2
set noshowmode
