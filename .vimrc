"vim configuration file"

"enable mouse support"
set mouse=a

"enable syntax"
syntax on

"enable line numbers"
set number

"highlight current line"
set cursorline
:highlight Cursorline cterm=bold ctermbg=black

"enable highlight search pattern"
set hlsearch

"enable smartcase search sensitivity"
set ignorecase
set smartcase

"identation using spaces"
"tabstop:		width of tab character"
"softtabstop:	fine tunes the amount of whitespaces to be added"
"shiftwidth:	determines the amount of whitespace to add in normal mode"
"expandtab:		wehn on use space instead of tab"
"textwidth:		text wrap width"
"autoindent:	autoindent in new line"

set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
set expandtab
set autoindent

"show the matching part of pairs [] {} ()"
set showmatch

"remove trailing whitespaces from Python and Fortran files"
autocmd BufWritePre *.py :%s/\s\+$//e
autocmd BufWritePre *.f90 :%s/\s\+$//e
autocmd BufWritePre *.f95 :%s/\s\+$//e
autocmd BufWritePre *.for :%s/\s\+$//e

"enable color themes"
if !has('gui_running')
	set t_Co=256
endif
"enable true colors support"
set termguicolors
"Vim colorscheme"
colorscheme desert

"not more than 80 char"
nnoremap <Leader>cc :set colorcolumn=80<cr>
nnoremap <Leader>ncc :set colorcolumn-=80<cr>
