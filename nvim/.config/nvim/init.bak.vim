"  Vim plug
" https://github.com/junegunn/vim-plug
" ------------------------------------------------------------------------------

let g:plugin_path = '~/.config/nvim/plugged'

call plug#begin(g:plugin_path)

" Theme
" ------------------------------------------------------------------------------

Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'arcticicestudio/nord-vim'
Plug 'sainnhe/sonokai'


" Tmux
" ------------------------------------------------------------------------------

if executable('tmux')
    Plug 'christoomey/vim-tmux-navigator'
    Plug 'tmux-plugins/vim-tmux-focus-events'
endif

" Autocomplete
" ------------------------------------------------------------------------------
" LSP Client
Plug 'neovim/nvim-lspconfig'
" Auto completion
Plug 'nvim-lua/completion-nvim'

" Editing
" ------------------------------------------------------------------------------

" Comment out code
Plug 'b3nj5m1n/kommentary'

" Status bar
" ------------------------------------------------------------------------------
Plug 'hoob3rt/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'drewtempelmeyer/palenight.vim'

" Syntax Hihglighting
" ------------------------------------------------------------------------------

"Global syntax highlighting
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" TODO highlighting
Plug 'folke/todo-comments.nvim'

" Finding and replacing
" ------------------------------------------------------------------------------
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

" File management
" ------------------------------------------------------------------------------

" File browser
Plug 'kyazdani42/nvim-tree.lua'

" General
" ------------------------------------------------------------------------------
" Smooth scrolling
Plug 'karb94/neoscroll.nvim'
" Close pairs
Plug 'windwp/nvim-autopairs'

call plug#end()

" Shortcut for checking if a plugin is loaded
function! s:has_plugin(plugin)
  let lookup = 'g:plugs["' . a:plugin . '"]'
  return exists(lookup)
endfunction

"  General config
" ------------------------------------------------------------------------------

" color scheme
set background=dark 
syntax on
colorscheme sonokai

" Set <space> to leader
let mapleader=' '
let maplocalleader='\'

" Enable term 24 bit colour
set termguicolors
hi Normal ctermbg=NONE guibg=NONE


"Credit joshdick
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif


" Turn off swapfiles
set noswapfile
set nobackup
set nowb

" Make it obvious where 80 characters is
set textwidth=80

" Use ``indent`` based folding
set foldmethod=indent

" Disable all folds on file open until `zc` or `zM` etc is used
set nofoldenable

" With :set hidden, opening a new file when the current buffer has unsaved
" changes causes files to be hidden instead of closed
set hidden

" Don't display the current mode (Insert, Visual, Replace)
" in the status line. This info is already shown in the
" Airline status bar.
set noshowmode

" Stop vim trying to syntax highlight long lines, typically found in minified
" files. This greatly reduces lag yet is still wide enough for large displays
set synmaxcol=500

" Highlight current line
set cursorline

" Indent using four spaces.
set softtabstop=4
set tabstop=4
set shiftwidth=4

" Smoother scrollin- when moving horizontally
set sidescroll=1

" Use spaces, not tabs
set expandtab

" Prevent autocomplete options opening in scratchpad
"set completeopt-=preview

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

" Eliminate delay when switching modes
set ttimeoutlen=0

" Enable mouse with tmux
set mouse=a

" Add the g flag to search/replace by default
set gdefault

if has("persistent_undo")
  set undodir=~/.config/nvim/undo
  set undofile
  set undolevels=1000
  set undoreload=10000
endif

" Centralize backups, swapfiles and undo history
set backupdir=~/.config/nvim/backups
set directory=.,$TEMP " Stop the swp file warning

" Respect modeline in files
set modeline
set modelines=4

" Show “invisible” characters
set lcs=tab:▸\ ,trail:·,nbsp:_
set list

" Disable error bells
set noerrorbells

" Don't show the intro message when starting Vim
" Also suppress several 'Press Enter to continue messages' especially
" with FZF
set shortmess=aoOtIWcFs

" Line numbers
set number
set relativenumber

" Show the (partial) command as it’s being typed
 set showcmd

" Load plugins for specific filetypes
filetype plugin on

" Hide special characters
set nolist

" Copy/paste to clipboard
set clipboard=unnamedplus

" Keybindings
" ------------------------------------------------------------------------------

""" Telescope
" Seach files by name 
nnoremap <C-P> <cmd>lua require('telescope.builtin').find_files()<cr> 
" Seach for text in files
nnoremap <C-F> <cmd>lua require('telescope.builtin').live_grep()<cr>
" Seach for text in files
" nnoremap <C-I> <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <silent><leader><leader>  <cmd>lua require('telescope.builtin').buffers()<cr>
" Search by TODO lists
nnoremap <C-T> <cmd> TodoTelescope<cr>

"make < > shifts keep selection
vnoremap < <gv
vnoremap > >gv


if s:has_plugin('nvim-tree.lua')
    nnoremap <C-n> <cmd> NvimTreeToggle<cr>
    let g:nvim_tree_highlight_opened_files = 1
    let g:nvim_tree_follow = 1
endif


"""" Completion
" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" Avoid showing message extra message when using completion
set shortmess+=c




