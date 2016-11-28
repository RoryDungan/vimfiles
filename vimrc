execute pathogen#infect()

" Indentation 
set smartindent
" set tabstop=2
" set shiftwidth=2
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent

" Enable autocompletion for file paths
set wildmode=list:longest,full
set wildmenu

" Highlight all instances of a pattern searched for
set hlsearch

" Highlight the line the cursor is currently on
set cursorline

" Allow deletiion of newline characters with backspace (by default backspace will stop at the beginning/end of a line)
set backspace=indent,eol,start

" Show line numbers on to the left of text
set number

" Enable syntax highlighting
syntax on

" Make copy and paste work with the system clipboard
set clipboard=unnamed

" Easier movment between tabs and buffers
map <F7> :bn<CR>
map <F8> :bp<CR>
map <F9> :tabn<CR>
map <F10> :tabp<CR>

" More custom key bindings
let mapleader=" "
map <leader>s :source ~/.vimrc<CR>
"noremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>

color twilight

" Enable UTF-8 support for extended character sets
if has('multi_byte')
    if &termencoding == ""
        let &termencoding = &encoding
    endif
    set encoding=utf-8
    setglobal fileencoding=utf-8
    set fileencodings=ucs-bom,utf-8,latin1
endif

if has('gui_running')
    " Remove all unnecessary controls to maximise screen space
    set guioptions=0
endif

let g:lightline = {
    \'colorscheme': 'wombat',
    \ }
set laststatus=2

