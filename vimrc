set t_Co=256
colorscheme sourcerer
set nocompatible
filetype off

" Nginx plugin
set rtp+=~/.vim/plugin/nginx.vim

" Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
" These have external dependencies.
" Plugin 'Valloric/YouCompleteMe'
" Plugin 'rhysd/vim-clang-format'
Bundle 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
call vundle#end()
filetype plugin indent on
" End Vundle

set mouse=a
syntax enable
set laststatus=2 " Powerline always visible
set ttyfast " Optimize for fast terminal connections
set wildmenu " Show autocomplete menu on <TAB>
set backupdir=~/.vim/.tmp/backups//
set directory=~/.vim/.tmp/swap//
set undodir=~/.vim/.tmp/undo//
set encoding=utf-8 nobomb " Set encoding and no BOM
set noeol " Don't empty newlines at the end of files
set number " Show line numbers
set cinoptions=N-s " Do not indent namespaces
set nowrap
set shiftwidth=2
set softtabstop=2
set expandtab
set backspace=indent,eol,start

" Search
set hlsearch
set incsearch
set smartcase
set ignorecase

" Extra Whitespaces
highlight ExtraWhitespace ctermbg=darkgreen guibg=lightgreen
match ExtraWhitespace /\s\+$/
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhitespace /\s\+$/

" Color column
set cc=80
highlight ColorColumn ctermbg=gray

" GUI Settings
if has("gui_running")
  if has("autocmd")
    " Automatically resize splits when resizing MacVim window
    autocmd VimResized * wincmd =
  endif
endif
" ClangFormat command (Requires apt-get install clang-format-3.5):
let g:clang_format#command='clang-format-3.5'
"-------------------
" Mappings

" Exit insert mode
imap jk <Esc>
" nohlsearch when hitting esc
nnoremap <leader><esc> :noh<return><esc>
" YouCompleteMe
nnoremap <leader>jd :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>jf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>g :YcmCompleter GoToImprecise<CR>

