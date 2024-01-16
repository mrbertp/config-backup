" Basics
set t_u7=
syntax enable
color default
set number
set numberwidth=3
set cursorline
set showcmd
set showmode
set title
set shell=/usr/bin/bash
set mouse=a
set viminfo='100,<1000,s100,h,<100
set backspace=indent,eol,start
set encoding=utf8
set incsearch
set showmatch
set hlsearch
set ignorecase
set smartcase

set conceallevel=1

filetype plugin indent on

" Document saving and compiling
" save document
inoremap <F2> 
         \<Esc>
         \:w<CR>:echo "document saved"<CR>
nnoremap <F2> 
         \<Esc>
         \:w<CR>:echo "document saved"<CR>
" compile protocol
inoremap <F3> 
         \<Esc>
         \:w<CR>
         \:let dir = expand("%:p:h")<CR>
         \:let file = expand("%:p")<CR>
         \:bd<CR>
         \:execute "!gutemberg -f " . dir . " styles/protocol.yaml"<CR>
         \:execute "edit " . file<CR><CR>
         \:echo "document compiled" <bar> :sleep 1<CR>
         \g'"zzA
nnoremap <F3> 
         \<Esc>
         \:w<CR>
         \:let dir = expand("%:p:h")<CR>
         \:let file = expand("%:p")<CR>
         \:bd<CR>
         \:execute "!gutemberg -f " . dir . " styles/protocol.yaml"<CR>
         \:execute "edit " . file<CR><CR>
         \:echo "document compiled" <bar> :sleep 1<CR>
         \g'"zzA
inoremap <F4> 
         \<Esc>
         \:w<CR>
         \:let dir = expand("%:p:h")<CR>
         \:let file = expand("%:p")<CR>
         \:bd<CR>
         \:execute "!gutemberg -f " . dir . " styles/notes.yaml"<CR>
         \:execute "edit " . file<CR><CR>
         \:echo "document compiled" <bar> :sleep 1<CR>
         \g'"zzA
nnoremap <F4> 
         \<Esc>
         \:w<CR>
         \:let dir = expand("%:p:h")<CR>
         \:let file = expand("%:p")<CR>
         \:bd<CR>
         \:execute "!gutemberg -f " . dir . " styles/notes.yaml"<CR>
         \:execute "edit " . file<CR><CR>
         \:echo "document compiled" <bar> :sleep 1<CR>
         \g'"zzA
" Rmd comment
inoremap <F5> 
         \<CR><!--<CR><CR>
         \-->
         \<Esc>
         \k
         \i

" Math shortcuts
  " exponent

" Symbols

" Lazy shortcuts
nnoremap <F10> 
         \:noh<CR>

" -- vim pluggins --

call plug#begin('~/.vim/plugged')

" - vimtex -
Plug 'lervag/vimtex'

" - ultisnips -
Plug 'SirVer/ultisnips'

call plug#end()

" Vimtex config
"let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=1
"let g:tex_conceal='abdmg'

" Ultisnips config
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
let g:UltiSnipsEditSplit = 'vertical'

" highlights config
hi clear Conceal
hi clear CursorLine
hi clear CursorLineNR
nohlsearch
hi CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE
hi CursorLineNR cterm=NONE ctermbg=brown ctermfg=016
hi Normal cterm=NONE ctermbg=016 guibg=black
hi MatchParen cterm=NONE ctermfg=black ctermbg=5
