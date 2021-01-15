"  Vim plug
" https://github.com/junegunn/vim-plug
" ------------------------------------------------------------------------------

let g:plugin_path = '~/.config/nvim/plugged'

call plug#begin(g:plugin_path)

" Theme
" ------------------------------------------------------------------------------
Plug 'dracula/vim', { 'as': 'dracula' }
" Plug 'arcticicestudio/nord-vim'
" Plug 'drewtempelmeyer/palenight.vim'
" Plug 'rakr/vim-one'

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

" Buffers
" ------------------------------------------------------------------------------

" Language pack
" ------------------------------------------------------------------------------

" Syntax and highlighting for every language
Plug 'sheerun/vim-polyglot'
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}

" Autocomplete
" ------------------------------------------------------------------------------
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'Valloric/YouCompleteMe'

" Editing
" ------------------------------------------------------------------------------

" " Allow plugins to be repeated with dot
" Plug 'tpope/vim-repeat'
" " Comment out blocks of code
Plug 'tomtom/tcomment_vim'
" " Toggle location and quickfix lists
" Plug 'Valloric/ListToggle'
" " Move between windows and allow swapping position
" Plug 't9md/vim-choosewin'
" " Remember cursor position in closed buffers
" Plug 'dietsche/vim-lastplace'
" " Open files from Quickfix
" Plug 'yssl/QFEnter'


" Text objects
" ------------------------------------------------------------------------------

" General
" ------------------------------------------------------------------------------
Plug 'psliwka/vim-smoothie'

" Refactoring
" ------------------------------------------------------------------------------

" Make it easy to add/remove/change brackets, quotes etc
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'

" Copy/Paste behaviour
" ------------------------------------------------------------------------------

" Stop everything saving to a register and instead rely on just `m` for cut
Plug 'svermeulen/vim-easyclip'
" Improve pasting code from the clipboard
Plug 'ConradIrwin/vim-bracketed-paste'

" Sessions
" ------------------------------------------------------------------------------

Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'

" Status bar
" ------------------------------------------------------------------------------

Plug 'vim-airline/vim-airline'

" Unity
" ------------------------------------------------------------------------------
Plug 'cjrh/vim-conda'
" Plug 'OmniSharp/omnisharp-vim'

" Plug 'Valloric/YouCompleteMe', { 'do': 'python3 install.py --clang-completer' }

Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}


call plug#end()

" Shortcut for checking if a plugin is loaded
function! s:has_plugin(plugin)
  let lookup = 'g:plugs["' . a:plugin . '"]'
  return exists(lookup)
endfunction

"  General config
" ------------------------------------------------------------------------------
"make < > shifts keep selection
vnoremap < <gv
vnoremap > >gv


set background=dark
" colorscheme nord
colorscheme dracula
" colorscheme palenight
" silent! colorscheme one

" Treat <li> and <p> tags like the block tags they are
let g:html_indent_tags='li\|p'

" Set <space> to leader
let mapleader=' '
let maplocalleader='\'

" Turn off swapfiles
set noswapfile
set nobackup
set nowb

" Allow editing of binary files
" Must be set before expandtab
" http://stackoverflow.com/a/26901774
set binary

" Enable term 24 bit colour
set termguicolors

" Make it obvious where 80 characters is
" set textwidth=80

" Use ``indent`` based folding
set foldmethod=indent
" Disable all folds on file open until `zc` or `zM` etc is used
set nofoldenable

" With :set hidden, opening a new file when the current buffer has unsaved
" changes causes files to be hidden instead of closed
set hidden

" Allow tab names to be remembered in sessions
set sessionoptions+=tabpages,globals

" Briefly move the cursor to the matching brace
set showmatch

" Lazyredraw attempts to solve Vim lag by reducing the amount of
" processing required. When enabled, any action that is not typed
" will not cause the screen to redraw
set lazyredraw

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
set softtabstop=4
set tabstop=4
set shiftwidth=4

" Smoother scrollin- when moving horizontally
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
set updatetime=300

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

if has("persistent_undo")
  set undodir=~/.config/nvim/undo
  set undofile
  set undolevels=1000
  set undoreload=10000
endif

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

" Path and file extensions to look for when using `gf`
set suffixesadd+=.css,index.css,.js,.jsx,.scss
set path+=.,src


set includeexpr=LoadMainNodeModule(v:fname)

" Start scrolling before cursor gets to the edge
set scrolloff=3
set sidescrolloff=15
set sidescroll=1


filetype plugin on

" Hide special characters
set nolist

" Disable continuation of comments
set formatoptions-=cro

"" Key mappings
" ------------------------------------------------------------------------------

" Save file
" nnoremap <silent><leader>w :silent wa<cr>

" Force j and k to work on display lines
" nnoremap k gk
" nnoremap j gj
" vnoremap k gk
" vnoremap j gj

" Disable arrow keys
" noremap <right> <Nop>
" noremap <left> <Nop>
" noremap <up> <Nop>
" noremap <down> <Nop>

" Delete line but preserve the space
" nnoremap dD S<Esc>

nnoremap <c-p> :FZF<cr>
nnoremap <c-i> :Buffers<cr>
" nnoremap <c-t> :Lines<cr>
nnoremap <c-space> :Rg!<cr>
" nnoremap <silent> <BS> :History:<cr>

" Make `Y` work from the cursor to the end of line
" nnoremap Y y$

" Split
noremap <silent><leader>h :split<cr>
noremap <silent><leader>v :vsplit<cr>

" Switch buffers
nnoremap <silent>H :silent bp<CR>
nnoremap <silent>L :silent bn<CR>

" Spellcheck
" nnoremap <F6> :setlocal spell!<cr>

" Clear search (highlight)
" nnoremap <silent> <leader>k :noh<cr>

" Press enter for newline without insert
" nnoremap <cr> o<esc>

" Allow sourcing of vimrc
nnoremap <leader>y :source $MYVIMRC<cr>

if exists(':tnoremap')
  " Allow movement seamlessly with terminals
  tnoremap <C-h> <C-\><C-n><C-w>h
  tnoremap <C-j> <C-\><C-n><C-w>j
  tnoremap <C-k> <C-\><C-n><C-w>k
  tnoremap <C-l> <C-\><C-n><C-w>l
endif

"  Plugin config
" ------------------------------------------------------------------------------

if s:has_plugin('vim-session')
  let g:session_autosave = 'yes'
  let g:session_autoload = 'no'
endif

" if s:has_plugin('vim-smoothie')
"   let g:smoothie_base_speed = 25
"   let g:smoothie_update_interval = 5
" endif

if s:has_plugin('vim-airline')
  let g:airline_theme = 'dracula'
  " let g:airline_theme = 'nord'
  let g:airline#extensions#branch#enabled = 1
  let g:airline_powerline_fonts = 1
  let g:airline#extensions#tmuxline#enabled = 0
  let g:airline#extensions#tabline#enabled = 1 " Enable the list of buffers
  let g:airline#extensions#tabline#buffers_label = ''
  let g:airline#extensions#tabline#fnamemod = ':t' " Show the filename
  let g:airline#extensions#tabline#fnamecollapse = 0
  let g:airline#extensions#tabline#show_tab_nr = 0
  let g:airline#extensions#tabline#buffer_nr_show = 0
  let g:airline#extensions#tabline#show_close_button = 0
  let g:airline#extensions#coc#enabled = 0
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline#extensions#default#layout = [
        \ [ 'a', 'c' ],
        \ [ 'x', 'error', 'warning' ]
        \ ]
endif

" let g:python_highlight_all = 1
"
let g:ycm_path_to_python_interpreter = '/usr/bin/python3'
let g:conda_startup_was_prefix = 0
