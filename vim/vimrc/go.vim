"------------------------------------------------------------------------------
" Vim-go
"------------------------------------------------------------------------------
let g:go_fmt_fail_silently = 1

" Open the relevant Godoc for the word under the cursor
au FileType go nmap <Leader>gd <Plug>(go-doc)

" Open the Godoc in browser
au FileType go nmap <Leader>gb <Plug>(go-doc-browser)

" Run/build/test/coverage
au FileType go nmap <leader>br <Plug>(go-run)
au FileType go nmap <leader>bb <Plug>(go-build)
au FileType go nmap <leader>bt <Plug>(go-test)
au FileType go nmap <leader>bc <Plug>(go-coverage)
au FileType go nmap <leader>bc <Plug>(go-coverage)

" By default syntax-highlighting for Functions, Methods and Structs is
" disabled.
" Let's enable them!
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1

au FileType go set tabstop=2
