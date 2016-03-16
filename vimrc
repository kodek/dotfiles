set nocompatible
filetype off
set t_Co=256
set t_ut=  " Disable background color eraswe

" Nginx plugin
set rtp+=~/.vim/plugin/nginx.vim

" Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'  " Plugin manager
Plugin 'godlygeek/csapprox' " Fix GUI colorschemes
Plugin 'tpope/vim-fugitive'  " GIT
Plugin 'kien/ctrlp.vim'  " Fuzzy search
Plugin 'fatih/vim-go'  " Go___ commands
Plugin 'scrooloose/syntastic'  " The >> to mark errors.
" These have external dependencies.
Plugin 'Valloric/YouCompleteMe'
" Plugin 'rhysd/vim-clang-format'
" Status bar
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Bundle 'edkolev/promptline.vim'
call vundle#end()
filetype plugin indent on
" End Vundle

" Set temp directories
set backupdir=~/.vim/.tmp/backups//
set directory=~/.vim/.tmp/swap//
set undodir=~/.vim/.tmp/undo//

set mouse=a
syntax enable
set laststatus=2 " Powerline always visible
set ttyfast " Optimize for fast terminal connections
set wildmenu " Show autocomplete menu on <TAB>
" Shows console-style autocomplete, try list:longest,full for "next" autocompl.
set wildmode=list:longest
set encoding=utf-8 nobomb " Set encoding and no BOM
set noeol " Don't empty newlines at the end of files
set number " Show line numbers
set cinoptions=N-s " Do not indent namespaces
set nowrap
set shiftwidth=2
set softtabstop=2
set shiftround
set expandtab
set backspace=indent,eol,start
set noshowmode " Don't show the --INSERT-- mode, since it's in powerline.

" Completion options (select longest + show menu even if a single match is
" found)
set completeopt=longest,menuone

" Search
set hlsearch
set incsearch
set smartcase
set ignorecase

" ClangFormat command (Requires apt-get install clang-format-3.5):
let g:clang_format#command='clang-format-3.5'

" Ctrl-P: Find relative .git folder as search root
let g:ctrlp_working_path_mode = 'ra'

" Mappings
source ~/.vim/vimrc/keymaps.vim

" Vim-go (mainly mappings)
source ~/.vim/vimrc/go.vim

" Appearance (colors and extra highlighting)
source ~/.vim/vimrc/appearance.vim

" Powerline
" python from powerline.vim import setup as powerline_setup
" python powerline_setup()
" python del powerline_setup
