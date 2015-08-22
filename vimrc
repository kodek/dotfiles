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
Plugin 'fatih/vim-go'
Plugin 'godlygeek/csapprox' " Fix GUI colorschemes
" These have external dependencies.
" Plugin 'Valloric/YouCompleteMe'
" Plugin 'rhysd/vim-clang-format'
Bundle 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
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

" Leader shortcuts
let mapleader=","
let g:mapleader=","
map <Leader>w :w<CR>


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
set cc=80,100
highlight ColorColumn ctermbg=235 " Dark gray

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
inoremap jk <Esc>
" nohlsearch when hitting esc
nnoremap <leader><esc> :noh<return><esc>
" YouCompleteMe
nnoremap <leader>jd :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>jf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>g :YcmCompleter GoToImprecise<CR>
" Completion options (select longest + show menu even if a single match is
" found)
set completeopt=longest,menuone

" Treat long lines as break lines
map j gj
map k gk

" Useful mappings for managing tabs
map <leader>tc :tabnew<cr>
map <leader>tw :tabclose<cr>
map <leader>tn :tabnext<cr>
map <leader>tp :tabprevious<cr>

" Let 'tl' toggle between this and the last accessed tab
let g:lasttab = 1
nmap <Leader>tt :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" easy way to edit reload .vimrc
nmap <leader>V :source $MYVIMRC<cr>
nmap <leader>v :vsp $MYVIMRC<cr>

" Switch between the last two files
nnoremap <leader><leader> <C-^>


"------------------------------------------------------------------------------
" Vim-go
"------------------------------------------------------------------------------
let g:go_fmt_fail_silently = 1

" Show a list of interfaces which is implemented by the type under your cursor
au FileType go nmap <Leader>s <Plug>(go-implements)

" Show type info for the word under your cursor
au FileType go nmap <Leader>i <Plug>(go-info)

" Open the relevant Godoc for the word under the cursor
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)

" Open the Godoc in browser
au FileType go nmap <Leader>gb <Plug>(go-doc-browser)

" Run/build/test/coverage
au FileType go nmap <leader>j <Plug>(go-run)
au FileType go nmap <leader>j <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)

" By default syntax-highlighting for Functions, Methods and Structs is
" disabled.
" Let's enable them!
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1

