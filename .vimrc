" ianL's .vimrc

" Other .vimrc's that helped me make mine:
" https://github.com/iangreenleaf/dotfiles/blob/master/vim/rc
" and some more I can't find right now.

" vi compatibility turned off
" either very or not important, depending on who you ask
set nocompatible

" Plugins:
" pathogen -- installed (https://github.com/tpope/vim-pathogen)
" matchit.vim -- (uninstalled)
" surround.vim -- installed (https://github.com/tpope/vim-surround)
" repeat.vim -- (uninstalled)
" Command-T -- (uninstalled)
" Fugitive -- installed (https://github.com/tpope/vim-fugitive)
" Rails.vim -- (uninstalled)
" NERDTree -- installed (git clone https://github.com/scrooloose/nerdtree.git)
" vim-haml -- (uninstalled)
" vim-airline -- installed (https://github.com/vim-airline/vim-airline)

call pathogen#infect()
call pathogen#helptags()

" Turn on line numbering. Turn it off with "set nonu"
set nu

" Set syntax on
syntax on

" Indent automatically depending on filetype
filetype indent plugin on

" Automaticaly indent while writing
set autoindent

" Ignore case in search, unless search is not all lowercase
set ignorecase
set smartcase

" Higlhight search
set hls

" Don't hard wrap lines
set textwidth=0
set wrapmargin=0

" Do soft wrap lines
set wrap
set showbreak=⏎\
highlight NonText gui=NONE

" Set font
" guifont=Monaco:h12

 " Choose a color scheme
if has("gui_running")
  set background=dark
  colorscheme solarized
  "colo 256_blackdust
  "colo desert
  "colo slate
  "colo github
else
  set term=xterm-256color
  colo slate
endif

" Spellcheck
"set spell

" Always keep some context above/below current line
set so=4

" Always show status line
set laststatus=2

"Number of spaces to use for each step of (auto)indent.  Used for |'cindent'|, |>>|, |<<|, etc.
set shiftwidth=2

" Number of spaces that a <Tab> in the file counts for.
set tabstop=2
set softtabstop=2

"In Insert mode: Use the appropriate number of spaces to insert a <Tab>.  Spaces are used in indents with the '>' and '<' commands and when 'autoindent' is on.  To insert a real tab when 'expandtab' is on, use CTRL-V<Tab>.
set expandtab

" Backspace all the things
set backspace=indent,eol,start

" Set mouse support when it's available
if has('mouse')
  set mouse=a
endif

" No folding most of the time
set foldmethod=manual

" Make bell visual instead of obnoxious beep
set visualbell
set noerrorbells

" Highlight tabs and trailing whitespace
set list
set listchars=tab:➙.,trail:╍,extends:❱,precedes:❰,nbsp:░

" Map F1 to Esc
map <F1> <Esc>
imap <F1> <Esc>

" Oh, and man… never ever let Vim write a backup file!
" http://nvie.com/posts/how-i-boosted-my-vim/
set nobackup
set noswapfile

" Hit ESC to clear highlighting after search
"nnoremap <esc> :noh<return><esc>

" Open NERDTree with Ctrl+n
map <C-n> :NERDTreeToggle<CR>

" Force arrow keys to be arrow keys on Mac
map OA <up>
map ^[OB <down>
map ^[OD <left>
map ^[OC <right>

" Move between buffer splits with Alt+<arrow>
nmap <silent> [1;2A :wincmd k<CR>
nmap <silent> [1;2B :wincmd j<CR>
nmap <silent> [1;2D :wincmd h<CR>
nmap <silent> [1;2C :wincmd l<CR>

" Allow undo's longer
set undofile
set undodir=$HOME/.vim/undo
set undolevels=1000
set undoreload=10000

