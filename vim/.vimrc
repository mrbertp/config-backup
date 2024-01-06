" Basics
syntax on
color default
set number
set showcmd
set title
set shell=/usr/bin/bash
set mouse=a
set viminfo='100,<1000,s100,h,<100

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
" Rmd comment
inoremap <F4> 
         \<CR><!--<CR><CR>
         \-->
         \<Esc>
         \k
         \i

" Math shortcuts
  " exponent
inoremap <expr> <C-e> 
         \strlen(expand('<cword>')) > 1 ? 
           \'<Esc>ebi{(<Esc>ea)}^{}<Esc>i'
         \ : 
           \'<Esc>bwi{<Esc>ea}^{}<Esc>i'

" Symbols
inoremap <C-u> 
         \$\mu$

" Lazy shortcuts
inoremap <F12> 
	\<Esc>Go<Esc>o

" -- vim pluggins --

call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes

" - vimtex -
Plug 'lervag/vimtex'
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

" - ultisnips -
Plug 'SirVer/ultisnips'
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

" Initialize plugin system
" - Automatically executes `filetype plugin indent on` and `syntax enable`.
call plug#end()
" You can revert the settings after the call like so:
"   filetype indent off   " Disable file-type-specific indentation
"   syntax off            " Disable syntax highlighting

