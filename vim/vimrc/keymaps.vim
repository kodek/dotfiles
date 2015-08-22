"Keymaps

" Exit insert mode
inoremap jk <Esc>

" Leader
let mapleader=","
let g:mapleader=","
map <Leader>w :w<CR>  " Fast save.

" nohlsearch when hitting esc
nnoremap <leader><esc> :noh<return><esc>

" YouCompleteMe
nnoremap <leader>jd :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>jf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>g :YcmCompleter GoToImprecise<CR>

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
