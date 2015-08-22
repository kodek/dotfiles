" Colors and appearance-related settings

set t_Co=256
colorscheme sourcerer

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
