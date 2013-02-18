" Loads source files when startup {{{

source $VIMRUNTIME/vimrc_example.vim

if filereadable( $HOME . '/.vimpath' )
    source $HOME/.vimpath
endif

"}}}


" Sets color scheme {{{

set background=dark
highlight StatusLine term=bold,reverse cterm=NONE ctermfg=White ctermbg=Blue

"}}}


" Sets variables {{{

if version >= 700
    set cursorline
endif

set autoindent
set encoding=utf-8
set expandtab
set fileencodings=utf-8,gbk,ucs-bom,ucs-2,latin1
set foldcolumn=1
set foldmethod=marker
set hlsearch
set ignorecase
set incsearch
set nobackup
set nocompatible
set nowrap
set number
set shiftwidth=4
set showmatch
set tabstop=4
set termencoding=utf-8
set updatetime=1
set virtualedit=block
set whichwrap=b,s,h,l,<,>,~,[,]
set wildmenu
set fo+=t
set textwidth=80

if !has( 'gui' )
    set shell=bash
endif

filetype on
syntax on

"}}}


" Key mappings {{{

" Opens new tab
nmap <silent> <F2> :tabnew<CR>

" Closes window
nmap <silent> <F3> :close<CR>

" Cleans the search hightlights
nmap <silent> <F4> :set invhlsearch<CR>

" Opens buffer manager
nmap <silent> <F5> :SBufExplorer<CR>

" Updates taglist of the current project
nmap <silent> <F6> :TlistUpdate<CR>

" Opens the window manager
nmap <silent> <F7> :WMToggle<CR>

" Toggles spell check
" nmap <silent> <F8> :setlocal spell! spelllang=en_us<CR>

" Toggles compilation error window
nmap <silent> <F8> :copen<CR>

" Toggles paste mode
nmap <silent> <F10> :set invpaste<CR>

" Use C/C++/Java/C# style brace fold marker
nmap <silent> <F11> :call OutlineToggle()<CR>

" Generates ctags database
nmap <silent> <leader>t :!ctags -R .<CR>

" Moves to the first explorer window
nmap <silent> <C-W><C-F> :FirstExplorerWindow<CR>

" Moves to the bottom explorer window
nmap <silent> <C-W><C-B> :BottomExplorerWindow<CR>

" }}}


" Sets plugin variables {{{

let g:Tlist_Compact_Format       = 1
let g:Tlist_File_Fold_Auto_Close = 0
let g:Tlist_Use_SingleClick      = 0
let g:Tlist_WinWidth             = 35

let g:bufExplorerOpenMode        = 1
let g:bufExplorerShowDirectories = 1
let g:bufExplorerSortBy          = 'mru'
let g:bufExplorerSplitBelow      = 1
let g:bufExplorerSplitHorzSize   = 15
let g:persistentBehaviour        = 0

let g:winManagerWidth            = 35

let g:winManagerWindowLayout = 'TagList|FileExplorer'

"}}}


" Sets Diff Mode {{{

set diffexpr=MyDiff()
function MyDiff()
    let opt = '-a --binary '
    if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
    if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
    let arg1 = v:fname_in
    if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
    let arg2 = v:fname_new
    if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
    let arg3 = v:fname_out
    if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
    if &sh =~ '\<cmd'
        silent execute '!"diff" ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . '"'
    else
        silent execute '!diff ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3
    endif
endfunction

" }}}


" Pathogen load
filetype off

call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on
syntax on
