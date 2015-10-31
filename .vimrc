" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible
 
" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on
 
" Enable syntax highlighting
syntax on

" Set color schema for dark backgrounds
set bg=dark

" Indentation settings for using hard tabs for indent. Display tabs as
" four characters wide.
set shiftwidth=4
set tabstop=4

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Set standard paste mode to nopaste
set nopaste!

" Use <F12> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F12>

" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler

" Always display the status line, even if only one window is displayed
set laststatus=2

" Display line numbers on the left and set the numbering color scheme
set number
highlight LineNr  ctermfg=darkgrey   ctermbg=black
