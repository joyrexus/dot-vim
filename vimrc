" See https://github.com/tpope/vim-pathogen#runtime-path-manipulation
execute pathogen#infect()

syntax enable
filetype on
filetype indent on
filetype plugin on
set wrap
set shiftround
set linebreak
set showmatch
set ignorecase
set smartcase
set gdefault
set autowrite
set autoindent
set smartindent
set smarttab
set expandtab
set tabstop=4
set shiftwidth=4
set textwidth=79
set history=20
set fileformat=unix
set foldmethod=indent
set shell=/bin/bash
set encoding=utf-8
set term=ansi
set background=dark

" See ~/.vim/colors/solarized.vim
colorscheme solarized

autocmd FileType css set tabstop=2 shiftwidth=2
autocmd FileType tex,txt,xls,tsv,csv set noexpandtab tabstop=2
autocmd FileType make set noexpandtab shiftwidth=8
autocmd FileType c,cpp set cindent

" Map leader key
let mapleader = ","
let maplocalleader = ","

" Golang settings powered by ~/.vim/bundle/vim-go
au FileType go nmap <Leader>f :GoFmt<CR>
au FileType go nmap <leader>r :!go run %<CR>
au FileType go nmap <leader>t :!go test<CR>
au FileType go nmap <leader>R <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>T <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>d <Plug>(go-doc)
let g:go_fmt_autosave = 0
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
au FileType go iab p! fmt.Print

" Use ,, instead of ctrl+x ctrl-o for autocompletion
inoremap <leader>, <C-x><C-o>

" Close the preview window after completing
autocmd CompleteDone * pclose

nmap <Leader>p  :set invpaste<CR>:set paste?<CR>
nmap <Leader>x  :!%<CR>

" Remap spacebar to toggle fold in normal mode
nnoremap <space> za

" Pull word under cursor into LHS of a substitute
nmap <Leader>z :%s#\<<c-r>=expand("<cword>")<cr>\>#

" Pull Visually Highlighted text into LHS of a substitute
vmap <Leader>z :<C-U>%s/\<<c-r>*\>/

iab jv! Jason Voigt

iab pi! π
iab theta! θ
iab delta! δ
iab Delta! Δ
iab epsilon! ε

iab date! <c-r>=strftime("%Y-%m-%d")<cr>
iab Date! <c-r>=strftime("%d-%b-%Y")<cr>
iab DATE! <c-r>=strftime("%B %d, %Y")<cr>
iab day!  <c-r>=strftime("%a")<cr>
iab Day!  <c-r>=strftime("%A")<cr>
iab time! <c-r>=strftime("%H:%M")<cr>
iab timestamp! <c-r>=strftime("%H:%M %a %d %b %Y")<cr>

" Solarized colors
iab base03! #002b36
iab base02! #073642
iab base01! #586e75
iab base00! #657b83
iab base0! #839496
iab base1! #93a1a1
iab base2! #eee8d5
iab base3! #fdf6e3
iab yellow! #b58900
iab orange! #cb4b16
iab red! #dc322f
iab magenta! #d33682
iab violet! #6c71c4
iab blue! #268bd2
iab cyan! #2aa198
iab green! #859900
