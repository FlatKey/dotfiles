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
set background=dark

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

" Set informations and style of the status line
set statusline=[%n]\ %F\ [%{strlen(&fenc)?&fenc:'none'},%{&ff},%{FileSize()}]%(\ [%M%R%H%W%Y]%)%=\ [%02v\ \-\ %l\/%L\ \-\ %p%%]

" Set individual colors
highlight LineNr  		ctermfg=darkgrey	ctermbg=black
highlight StatusLine	ctermfg=black		ctermbg=darkgrey

" Functions
function! FileSize()
	let bytes = getfsize(expand("%:p"))
	if bytes <= 0
		return "0B"
	endif
	if bytes < 1024
		return bytes
	else
		return (bytes / 1024) . "K"
	endif
endfunction
