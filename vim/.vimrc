" vim configuration file
" Rik Theys <rik.theys@esat.kuleuven.be>
version 7.0
set nocompatible        " Not compatible with vi (better, multi-level undo, ...)

" Colorscheme
" -----------
"colorscheme blue
"colorscheme evening
"colorscheme morning
"colorscheme seashell
"colorscheme nightwish
"colorscheme peachpuff
"colorscheme delek
colorscheme wombat256mod
"colorscheme oceanblack

" Syntax Highlighting
" -------------------
filetype on
syntax on

" Options
" -------
set t_Co=256" force 256 colors in terminal
"set nowrap		" don't wrap lines
set cursorline		" show a line under the cursor
set cursorcolumn	" show a vertical line where the cursor is
hi CursorColumn ctermbg=236
""hi CursorLine ctermbg=233
set visualbell          " No beeps
set ruler               " Show the ruler at all times
set showcmd             " Show partially types commands
set nobackup            " Don't keep backup files
set backspace=2         " Allow backspacing over everything in insert mode
"set showmatch          " Show matching braces a la emacs
set hlsearch            " Highlight search pattern
set ignorecase          " Do case insensitive searches by default
set autoindent
set number             " Show line numbers
set history=500
set laststatus=2
set title
set scrolloff=3
set sidescrolloff=3
set showtabline=2	" Always show the tab line

" Set colorcolum to 80 chars and highlight it
if version >=703
  set cc=80,120
  hi ColorColumn ctermbg=233 guibg=lightblue
endif


" Key mappings
" ------------
nnoremap <silent> <cr> :noh<cr>

set pastetoggle=<F2>



" titlestring
" -----------
set titlestring=		" completely reset titlestring
set titlestring+=%t		" current filename
set titlestring+=%(\ %M%)	" modified flag
set titlestring+=%(\ (%{expand(\"%:~:h\")})%)	" relative path to current file
set titlestring+=%(\ %a%)	" extra attributes

" Show < or > when characters are not displayed on the left or right
"set list listchars=precedes:<,extends:>

set wildmenu			" show command line completions
set wildmode=longest:full	" complete mode for wildmenu
set wildmode+=full		" when pressing tab a second time, full complete

" Spelling
" --------
" To go to the next spelling error: ]s
" To to to the previous error: [s
" To get a list of suggestions: z=
" To add the word to the OK list: zg
" To add a word to the NOT OK list: zw
" This map command lets you toggle spelling on/off for the current buffer
map <F5> :setlocal spell! spelllang=en_us <CR>

