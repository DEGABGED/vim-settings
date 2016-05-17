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
Plugin 'tpope/vim-commentary'
Plugin 'airblade/vim-gitgutter'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'bling/vim-bufferline'

" After adding the plugins
call vundle#end()
filetype plugin indent on

" Command autocomplete
set wildmenu
set wildmode=list:longest,full

" CtrlP.vim
set runtimepath^=~/.vim/bundle/ctrlp.vim
"let g:ctrlp_working_path_mode='ca'

" Syntax highlighting / Colors
syntax enable
"let g:solarized_termcolors=256
set t_Co=256
set background=dark
colorscheme hybrid
hi! Folded ctermfg=black ctermbg=darkgrey
hi! FoldColumn ctermfg=black ctermbg=darkgrey

" Tabulation (will be overriden for most files)
set noexpandtab
set copyindent
set preserveindent
set shiftwidth=0
set tabstop=4

" Folding
" set foldmethod=syntax
" set foldenable
" syn region foldBraces start=/{/ end=/}/ transparent fold
" syn region foldJavadoc start=,/\*\*, end=,\*/, transparent fold keepend
set fdm=syntax
set fdc=2
set foldlevelstart=1
" augroup javadocs
" 	au BufReadPre *.java :set fdm=marker fmr=/**,**
" 	au BufWinEnter *.java :set fdm=manual
" augroup END

" Mappings
let mapleader=" "
vmap <c-c> gc
nnoremap <Tab> <c-w>w

noremap <F2> :NERDTree<CR>
noremap! <F2> <Esc>:NERDTree<CR>
noremap <F4> :noh<CR>
noremap! <F4> <Esc>:noh<CR>
noremap <F5> :source %<CR>
noremap! <F5> <Esc>:source %<CR>
noremap <F3> :call ToggleNumbering()<CR>
noremap! <F3> <Esc>:call ToggleNumbering()<CR>

nnoremap <c-j> :bp<CR>
nnoremap <c-k> :bn<CR>
nnoremap <c-h> gT
nnoremap <c-l> gt

nnoremap <c-DOWN> zj
nnoremap <c-UP> zk
nnoremap <c-LEFT> zm
nnoremap <c-RIGHT> zr
nnoremap <Leader><DOWN> 10<c-w>-
nnoremap <Leader><UP> 10<c-w>+

nnoremap <DOWN> <nop>
nnoremap <UP> <nop>
nnoremap <LEFT> <nop>
nnoremap <RIGHT> <nop>
inoremap <DOWN> <nop>
inoremap <UP> <nop>
inoremap <LEFT> <nop>
inoremap <RIGHT> <nop>

nnoremap B ^
nnoremap E $
nnoremap ^ <nop>
nnoremap $ <nop>
nnoremap <c-z> <nop>

" Autocommands
augroup fileTabbing
	autocmd!
	autocmd FileType python call TabSetting(2, 1)
	autocmd FileType html call TabSetting(2, 1)
	autocmd FileType c call TabSetting(4, 0)
augroup END

" Functions
function! TabSetting(stop, expand)
	let &tabstop = a:stop
	let &softtabstop = a:stop
	let &shiftwidth = a:stop
	if a:expand
		set expandtab
	else
		set noexpandtab
	endif
	retab
endfunction

" Yanked from dougblack.io
function! ToggleNumbering()
	if &relativenumber
		set norelativenumber
		set number
	else
		set relativenumber
	endif
endfunction

" UltiSnips (may be removed if I use YCM)
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetDirectories=["user-conf/snippets/"]

" Numbering and invisibles
set number
set relativenumber
set hls is
set listchars=tab:\|\ ,trail:.,extends:>,precedes:<
set list!

" NERDTree and NERDTree Git Plugin
let g:NERDTreeSortOrder = [
	\ '\/$',
	\ '\.c$',
	\ '\.java$',
	\ '\.py$',
	\ '\.rb$',
	\ '\.php$',
	\ '\.hs$',
	\ '\.html$',
	\ '\.js$',
	\ '\.css$',
	\ '\.sh$',
	\ '*'
	\ ]

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "*",
    \ "Staged"    : "+",
    \ "Untracked" : ".",
    \ "Renamed"   : ">",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "X",
    \ "Dirty"     : "D",
    \ "Clean"     : "C",
    \ "Unknown"   : "?"
    \ }
