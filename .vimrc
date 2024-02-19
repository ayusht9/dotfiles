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

"Plugins"

call plug#begin()

"Shorthand notation; fetches https://github.com/junegunn/vim-easy-align"
Plug 'junegunn/vim-easy-align'

"Any valid git URL is allowed"
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

"Multiple Plug commands can be written in a single line using | separators"
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

"On-demand loading"
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-default branch"
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)"
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options"
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook"
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)"
Plug '~/my-prototype-plugin'

call plug#end()
