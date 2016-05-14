" SYMLINKED
" For Pathogen (unused)
" execute pathogen#infect()
" set modeline

" For Vundle
set nocompatible
filetype off

" Runtime path
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'SirVer/ultisnips'
Plugin 'altercation/vim-colors-solarized'

" After adding the plugins
call vundle#end()
filetype plugin indent on

" Command autocomplete
set wildmenu
set wildmode=list:longest,full

" CtrlP.vim
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_working_path_mode='ca'

" Syntax highlighting / Colors
syntax enable
"let g:solarized_termcolors=256
set t_Co=256
set background=dark
colorscheme hybrid

" Tabulation / Folding
set noexpandtab
set copyindent
set preserveindent
"set softtabstop=0
set shiftwidth=4
set tabstop=4
set foldmethod=manual

" Mappings
nmap __ <c-w><c-w>
nmap <c-j> :bn
nmap <c-k> :bp
nmap <c-h> gT
nmap <c-l> gt
cmap n3 NERDTree

" UltiSnips (may be removed if I use YCM)
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetDirectories=["user-conf/snippets/"]

" Ignore this
"cmap snekc s:\w\@<=\([A-Z]\):\_\L\1:g
"cmap camlc s:\w\@<=_\([a-z]\):\U\1:g
"cmap semic %s:[^\{\|\}\|\;]$:&\;:g
"cmap softt %s:	:\ \ \ \ :g
"cmap hardt %s:\ \ \ \ :	:g

" Numbering and invisibles
set number
set hls is
set listchars=tab:\|\ ,trail:.,extends:>,precedes:<
set list!
