let g:plugin_path = '~/.config/nvim/plugged'

call plug#begin(g:plugin_path)


Plug 'cjrh/vim-conda' " conda


Plug 'Shougo/deoplete.nvim'

Plug 'dense-analysis/ale'
" tmux
" ------------------------------------------------------------------------------

if executable('tmux')
  " Navigate between vim and tmux splits
  Plug 'christoomey/vim-tmux-navigator'
  " Restore `FocusLost` and `FocusGained` events in tmux
  Plug 'tmux-plugins/vim-tmux-focus-events'
endif

" Finding and replacing
" ------------------------------------------------------------------------------

" Fuzzy finding anything
Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all'}
" fzf integration for Vim
Plug 'junegunn/fzf.vim'
" Improved search in Vim
Plug 'junegunn/vim-slash'

" File management
" ------------------------------------------------------------------------------

" File browser
Plug 'mcchrish/nnn.vim'
" Undo visualise
Plug 'mbbill/undotree'


Plug 'preservim/nerdcommenter'

" Status bar
" ------------------------------------------------------------------------------

Plug 'vim-airline/vim-airline'

" theme
" ------------------------------------------------------------------------------

Plug 'drewtempelmeyer/palenight.vim'

" smooth scroll
"
"plug 'psliwka/vim-smoothie'
call plug#end()
"  general config
" ------------------------------------------------------------------------------
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
syntax on
set background=dark
colorscheme palenight

let g:airline_theme = "palenight"
" treat <li> and <p> tags like the block tags they are
let g:html_indent_tags='li\|p'

" set <space> to leader
let mapleader=' '
let maplocalleader='\'

" turn off swapfiles
set noswapfile
set nobackup
set nowb

" allow editing of binary files
" must be set before expandtab
" http://stackoverflow.com/a/26901774
set binary

" enable term 24 bit colour
set termguicolors

" make it obvious where 80 characters is
set textwidth=80

" use ``indent`` based folding
set foldmethod=indent
" disable all folds on file open until `zc` or `zm` etc is used
set nofoldenable

" with :set hidden, opening a new file when the current buffer has unsaved
" changes causes files to be hidden instead of closed
set hidden

" allow tab names to be remembered in sessions
set sessionoptions+=tabpages,globals

" briefly move the cursor to the matching brace
set showmatch

" Lazyredraw attempts to solve Vim lag by reducing the amount of
" processing required. When enabled, any action that is not typed
" will not cause the screen to redraw
" set lazyredraw

" Don't display the current mode (Insert, Visual, Replace)
" in the status line. This info is already shown in the
" Airline status bar.
set noshowmode

" Stop vim trying to syntax highlight long lines, typically found in minified
" files. This greatly reduces lag yet is still wide enough for large displays
set synmaxcol=500

" Highlight current line
set cursorline

" Indent using two spaces.
set softtabstop=2
set tabstop=2
set shiftwidth=2

" Smoother scrolling when moving horizontally
set sidescroll=1

" Use spaces, not tabs
set expandtab

" Don't scan included files. The .tags file is more performant.
set complete-=i
set complete+=kspell

" Prevent autocomplete options opening in scratchpad
set completeopt-=preview

" This is set low so that gitgutter updates reasonably quickly
" https://github.com/airblade/vim-gitgutter#when-are-the-signs-updated
"set updatetime=1

" Don't wrap lines
set nowrap

" Keep the cursor in the same place when switching buffers
set nostartofline

" Show col and line position in the statusbar
set ruler

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Ignore case of searches
set ignorecase

" If a pattern contains an uppercase letter
" it is case sensitive, otherwise, it is not
set smartcase

" Use the OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard=unnamed

" Spell check
set spelllang=en

" Where it should get the dictionary files
let g:spellfile_URL = 'http://ftp.vim.org/vim/runtime/spell'

" For autocompletion, complete as much as you can.
set wildmode=list:longest,full

" don't add extra space after ., !, etc. when joining
set nojoinspaces

" Eliminate delay when switching modes
set ttimeoutlen=0

" Enable mouse with tmux
set mouse=a

" Auto save changes before switching buffer
set autowrite

" Add the g flag to search/replace by default
set gdefault

" Centralize backups, swapfiles and undo history
set backupdir=~/.config/nvim/backups
set directory=.,$TEMP " Stop the swp file warning


" Always show sign column for git icons
set signcolumn=yes

" Don’t create backups when editing files in certain directories
set backupskip=/tmp/*,/private/tmp/*

" Respect modeline in files
set modeline
set modelines=4

" Enable per-directory .vimrc files and disable unsafe commands in them
set exrc
set secure

" Show “invisible” characters
set lcs=tab:▸\ ,trail:·,nbsp:_
set list

" Disable error bells
set noerrorbells

" Don't show the intro message when starting Vim
" Also suppress several 'Press Enter to continue messages' especially
" with FZF
set shortmess=aoOtIWcFs

" Show the current mode
set title

" Show the (partial) command as it’s being typed
set showcmd

" Line numbers
set number
set relativenumber


" Start scrolling before cursor gets to the edge
set scrolloff=3
set sidescrolloff=15
set sidescroll=1



