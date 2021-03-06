"------------------------------------------------------------------------------
" Vim-go
"------------------------------------------------------------------------------
" let g:go_fmt_fail_silently = 1
" Run goimports instead of gofmt. Does formatting as well
let g:go_fmt_command = "goimports"

" Open the relevant Godoc for the word under the cursor
au FileType go nmap <Leader>gd <Plug>(go-doc)

" Open the Godoc in browser
au FileType go nmap <Leader>gb <Plug>(go-doc-browser)

" Run/build/test/coverage
au FileType go nmap <leader>br <Plug>(go-run)
au FileType go nmap <leader>bb <Plug>(go-build)
au FileType go nmap <leader>bt <Plug>(go-test)
au FileType go nmap <leader>bc <Plug>(go-coverage)

" By default syntax-highlighting for Functions, Methods and Structs is
" disabled.
" Let's enable them!
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

au FileType go set tabstop=2

" Prevents Syntastic from lagging on file save
"let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
"let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }
