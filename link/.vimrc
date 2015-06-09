" Load sensible defaults and setup NeoBundle
call vimrc#before()

" Define plugins you use
"       NeoBundle 'kien/ctrlp.vim'
"NeoBundle
NeoBundle 'bling/vim-airline'
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
" NeoBundle 'kien/ctrlp.vim'
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'Shougo/vimproc.vim', {
      \ 'build' : {
      \     'windows' : 'tools\\update-dll-mingw',
      \     'cygwin' : 'make -f make_cygwin.mak',
      \     'mac' : 'make -f make_mac.mak',
      \     'unix' : 'make -f make_unix.mak',
      \    },
      \ }
NeoBundle 'Shougo/unite.vim'
" NeoBundle 'scrooloose/nerdtree'
NeoBundle 'edkolev/promptline.vim'
NeoBundle 'Valloric/YouCompleteMe', {'build' : {'unix' : './install.sh --clang-completer', }, }
NeoBundle 'rking/ag.vim'
NeoBundle 'vim-scripts/dbext.vim'

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

let mapleader = "\<Space>"
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
command W w !sudo tee % > /dev/null
cmap w!! w !sudo tee >/dev/null %

"Copy and Paste
noremap <C-c> "+y
noremap <C-v> "+p

" Unite
let g:unite_source_history_yank_enable = 1
call unite#filters#matcher_default#use(['matcher_fuzzy'])
nnoremap <leader>t :<C-u>Unite -no-split -buffer-name=files   -start-insert file_rec/async:!<cr>
nnoremap <leader>f :<C-u>Unite -no-split -quick-match -buffer-name=files   -start-insert file<cr>
nnoremap <leader>r :<C-u>Unite -no-split -quick-match -buffer-name=mru     -start-insert file_mru<cr>
nnoremap <leader>o :<C-u>Unite -no-split -buffer-name=outline -start-insert outline<cr>
nnoremap <leader>y :<C-u>Unite -no-split -quick-match -buffer-name=yank    history/yank<cr>
nnoremap <leader>s :<C-u>Unite -no-split -quick-match buffer<cr>

" Custom mappings for the unite buffer
autocmd FileType unite call s:unite_settings()
function! s:unite_settings()
  " Play nice with supertab
  let b:SuperTabDisabled=1
  " Enable navigation with control-j and control-k in insert mode
  imap <buffer> <C-j>   <Plug>(unite_select_next_line)
  imap <buffer> <C-k>   <Plug>(unite_select_previous_line)
endfunction
nnoremap <C-p> :Unite file_rec/async<cr>

" MySql-Editor dbext.vim
let g:dbext_default_profile_mySQL = 'type=MYSQL:user=root:passwd=surf:dbname=fs_test'
let g:dbext_default_profile = 'mySQL'

" Reloading .vimrc after changing it
au! BufWritePost .vimrc source %
