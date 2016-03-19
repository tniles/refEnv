" this is my personal VIM configure file
" happy VIMing!

" NOTE: to reset options to default values, type
" :set optionparm&
" into Vim (the ampersand after the option name). 

set nocompatible
syntax on

" COLORS/SYNTAX (if using windows gvim, place colors/plugins in the windows dir)
"set term=xterm
colorscheme tango
"colorscheme chocolateliquor
if has("gui_running")
  colorscheme chocolateliquor
  "colorscheme desert   " other colors located in $VIMRUNTIME/colors
                        " see :help usr_06.txt for customization info
  if has("x11")
    colorscheme chocolateliquor
    "colorscheme desert  
  elseif has("gui_win32")
    colorscheme chocolateliquor
    "colorscheme elflord
    "colorscheme Darkslategray
  endif
endif

" ENVIRONMENT
set mousehide       " hides mouse when typing
set history=100     " x commands and x search patterns in the history
set ruler           " always display current position in lower right corner
set scrolloff=5     " num visible lines surrounding cursor
"set wildmode=longest,list  " autocompletion display parms (:help wildmode for more options)
"set nowrap         " no text wrap
"set number         " display line numbers at left

if has("gui_running")
  " GUI is running or is about to start.
  " Maximize gvim window.
  " I found 94 columns to work best when pdf'ing txt files for printing.
  set lines=50 columns=94
else
  " This is console Vim.
  " Use running window (do nothing)
endif

" SEARCHING
set hlsearch        " highlight results
set showmatch       " highlight matching brackets/braces/etc.
"set incsearch      " dynamic searching
set ignorecase      " search options for case
"set smartcase      " search options for case

" TAGS
set tags=./tags;/   " always look in parent folder, then on up to / for tags

" FORMATTING
set autoindent      " propagates indent of previous line
set smartindent     " dynamically adjust indent (great for brackets)
" remap for smartindent to not move hashes to col 1
" :inoremap # X#
"softtabstop=2      " soft tab option
set tabstop=4       " hard tabstops at 4 (8 is default)
set shiftwidth=4    " num spaces inserted for indentation
set tabstop=2       " TEMP
set shiftwidth=2    " TEMP
set expandtab       " transform tabs to spaces
" remap for tabs to move only 4 spaces
":inoremap <Tab> <Tab>XXXXX
set formatoptions=vctqr " auto format options

" FOLDS
set foldmethod=marker

" PRINTING
set printoptions=paper:letter,duplex:on,number:y

" MISCELLANEOUS
" press space to clear search highlights and any displayed messages
nnoremap <silent> <Space> :silent noh<Bar>echo<CR>
set backspace=2     " if backspace ever stops working, use this
"set t_te=""         " leave buffer contents on screen upon exit
set textwidth=94    " wrap text by inserting eol (i.e. modify file contents, not just display)

set equalalways     " split windows always equal size
set backupcopy=yes  " keep windows gvim from changing perms

" spell check (:help spell)
:command! SpellOn setlocal spell spelllang=en_us
:command! SpellOff setlocal spell spelllang=

