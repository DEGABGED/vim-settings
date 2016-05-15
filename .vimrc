" SYMLINKED
" For Pathogen (unused)

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

" Tabulation
set noexpandtab
set copyindent
set preserveindent
"set softtabstop=0
set shiftwidth=4
set tabstop=4

" Folding
" set foldmethod=syntax
" set foldenable
" syn region foldBraces start=/{/ end=/}/ transparent fold
" syn region foldJavadoc start=,/\*\*, end=,\*/, transparent fold keepend
set fdm=syntax
set fdc=2
set foldlevelstart=2
" augroup javadocs
" 	au BufReadPre *.java :set fdm=marker fmr=/**,**
" 	au BufWinEnter *.java :set fdm=manual
" augroup END

" Mappings
vmap <c-c> gc
nnoremap <Tab> <c-w>w

nnoremap <F2> :NERDTree<CR>
vnoremap <F2> <Esc>:NERDTree<CR>
onoremap <F2> <Esc>:NERDTree<CR>
inoremap <F2> <Esc>:NERDTree<CR>
nnoremap <F4> :noh<CR>
" Might be better to just restart vim in certain cases though tbh
nnoremap <F5> :source %<CR>
vnoremap <F5> <Esc>:source %<CR>
onoremap <F5> <Esc>:source %<CR>
inoremap <F5> <Esc>:source %<CR>

nnoremap <c-j> :bp<CR>
nnoremap <c-k> :bn<CR>
nnoremap <c-h> gT
nnoremap <c-l> gt
" Might switch these for something more useful
nnoremap <c-DOWN> zj
nnoremap <c-UP> zk
nnoremap <c-LEFT> <c-w><
nnoremap <c-RIGHT> <c-w>>

" I don't want to accidentally close vim with CTRL-Z
nnoremap <c-z> <Esc>

" UltiSnips (may be removed if I use YCM)
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetDirectories=["user-conf/snippets/"]

" Numbering and invisibles
set number
set hls is
set listchars=tab:\|\ ,trail:.,extends:>,precedes:<
set list!

" NERDTree Git Plugin
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
