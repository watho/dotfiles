" Load sensible defaults and setup NeoBundle
call vimrc#before()

" Define plugins you use
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'vim-airline/vim-airline-themes'
let g:airline_theme='powerlineish'
" let g:airline_left_sep=''
" let g:airline_right_sep=''
let g:airline_section_z='%P'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"

NeoBundle 'tpope/vim-repeat'
NeoBundle 'tpope/vim-commentary'
NeoBundle 'terryma/vim-expand-region'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-sleuth'
NeoBundle 'tpope/vim-surround'
NeoBundle 'mhinz/vim-signify'
NeoBundle 'xolox/vim-misc'
NeoBundle 'xolox/vim-easytags'
NeoBundle 'kien/ctrlp.vim'
" Git Status in erster Spalte
" NeoBundle 'airblade/vim-gitgutter'
" NeoBundle 'Shougo/neomru.vim'
" NeoBundle 'Shougo/vimproc.vim', {
"      \ 'build' : {
"      \     'windows' : 'tools\\update-dll-mingw',
"      \     'cygwin' : 'make -f make_cygwin.mak',
"      \     'mac' : 'make -f make_mac.mak',
"      \     'unix' : 'make -f make_unix.mak',
"      \    },
"      \ }
"NeoBundle 'Shougo/unite.vim'
" NeoBundle 'scrooloose/nerdtree'
"NeoBundle 'edkolev/promptline.vim'
NeoBundle 'Valloric/YouCompleteMe', {'build' : {'unix' : './install.sh --clang-completer', }, }
NeoBundle 'rking/ag.vim'
NeoBundle 'vim-scripts/dbext.vim'
" qml syntax highlighting
"NeoBundle 'peterhoeg/vim-qml'
"NeoBundle 'will133/vim-dirdiff'
"  let g:DirDiffDynamicDiffText = 1

" Define your vim configuration
" map q: :q

" Load plugins
call vimrc#after()


set foldenable
set foldlevelstart=99
set foldnestmax=20
let g:xml_syntax_folding=1
au FileType xml setlocal foldmethod=syntax

set listchars=tab:▷⋅,trail:⋅,nbsp:⋅

" integrating fzf
"set rtp+=~/.fzf


let mapleader = "\<Space>"

" map [ and ] to < and >, its easier on german keyboard layouts
nmap < [
nmap > ]
omap < [
omap > ]
xmap < [
xmap > ]

nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :wq<CR>
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P
nmap <Leader><Leader> V
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]

" Move between splitwindows with CTRL+J CTRL+K
map <C-J> <C-W>j
map <C-K> <C-W>k

" Sudo write
"command W w !sudo tee % > /dev/null
cmap w!! w !sudo tee >/dev/null %

"Copy and Paste
noremap <C-c> "+y
noremap <C-v> "+p

"CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" MySql-Editor dbext.vim
let g:dbext_default_profile_mySQL = 'type=MYSQL:user=root:passwd=surf:dbname=fs_test'
let g:dbext_default_profile = 'mySQL'

" Reloading .vimrc after changing it
au! BufWritePost .vimrc source %
