set nocompatible                                " no vi compatibility
set shell=/usr/bin/zsh                          " set default shell
set noswapfile                                  " no swap files
syntax enable                                   " enable syntax
set mouse=a                                     " enable mouse
set updatetime=30                               " time before updates
set number relativenumber                       " line numbers
syntax enable                                   " enable syntax
filetype plugin indent on
set signcolumn=yes numberwidth=6                " signcolumn and available width
set linebreak                                   " text wrap wont break words
set textwidth=100                               " line length
set spell                                       " spell check
set spellsuggest=best,9                         " show the first 9 spell suggestions
set smartcase ignorecase incsearch              " searching and highlighting
set foldmethod=indent foldlevel=2 foldcolumn=2  " code folding
set foldlevelstart=99 foldopen+=jump nofoldenable " auto fold open/close
set clipboard=unnamedplus                       " clipboard register
set tabstop=3 softtabstop=0                     " tab settings
set expandtab shiftwidth=3 smarttab
set breakindent                                 " smart wrapping indentation
set breakindentopt=shift:2,min:40,sbr
set showbreak=>>                                " shows line break
set ruler                                       " always show cursor
set wrap                                        " enable text wrapping
set scrolloff=10                                " lines above/below cursor when scrolling
set showcmd                                     " key strokes in command line
set splitbelow splitright                       " new windows split right/bottom
set wildmenu wildmode=longest:full,full         " command autocompletion
set timeoutlen=1000 ttimeoutlen=1000            " timeout for keybind presses
set confirm                                     " prompt to save not error
set undofile undodir=~/.vim/undo-dir            " persistent undo
set listchars=tab:>-                            " no endline chars
set hidden                                      " hide buffers instead of close
set autochdir                                   " relative filepaths
set wildignorecase                              " wildmenu ignorecase

