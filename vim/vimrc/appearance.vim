" Colors and appearance-related settings

" Color column (KEEP BEFORE "colorscheme" DIRECTIVE)
set cc=80,100
highlight ColorColumn ctermbg=235 " Dark gray

" colorscheme sourcerer
colorscheme foursee  " Trying theme from vim-go-ide

" Extra Whitespaces
highlight ExtraWhitespace ctermbg=darkgreen guibg=lightgreen
match ExtraWhitespace /\s\+$/
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhitespace /\s\+$/

" GUI Settings
if has("gui_running")
  if has("autocmd")
    " Automatically resize splits when resizing MacVim window
    autocmd VimResized * wincmd =
  endif
endif
