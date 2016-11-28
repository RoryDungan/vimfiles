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
"set hlsearch

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
    " Twilight is my favourite colour scheme, second only to Monokai (I always prefer dark themes)
    " Obviously this will only work if you've downloaded and installed twilight.vim
    color twilight

    " Hack I found to allow vim to display in fullscreen. Since this isn't built into vim you have to use an external program or library
    if has('gui_gtk2') 
        map <F11> :call system("wmctrl -ir " . v:windowid . " -b toggle,fullscreen")<CR>
    endif
    if has('gui_win32')
        " The default font in Windows vim is awful
        set guifont=Consolas:h11:cANSI
        map <F11> :call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>
    endif
endif

" Disable cursor keys - not really necessary but I originally had this to try and help myself get used to HJKL navigation
"for prefix in ['i', 'n', 'v']
"    for key in ['<Up>', '<Down>', '<Left>', '<Right>']
"        exe prefix . "noremap " . key . " <Nop>"
"    endfor
"endfor
