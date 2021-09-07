"  Vim plug
" https://github.com/junegunn/vim-plug
" ------------------------------------------------------------------------------

let g:plugin_path = '~/.config/nvim/plugged'

call plug#begin(g:plugin_path)

" Theme
" ------------------------------------------------------------------------------
" Plug 'dracula/vim', { 'as': 'dracula' }
" Plug 'arcticicestudio/nord-vim'
Plug 'dracula/vim', { 'as': 'dracula' }
" Plug 'drewtempelmeyer/palenight.vim'
" Plug 'rakr/vim-one'
" Plug 'joshdick/onedark.vim'
" Plug 'morhetz/gruvbox'
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

" Python
" ------------------------------------------------------------------------------
" Plug 'Vimjas/vim-python-pep8-indent'
" Plug 'dense-analysis/ale'

" Autocomplete
" ------------------------------------------------------------------------------
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'Valloric/YouCompleteMe'

" Editing
" ------------------------------------------------------------------------------


Plug 'bkad/camelcasemotion'

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

Plug 'norcalli/nvim-colorizer.lua'
" Text objects
" ------------------------------------------------------------------------------

" General
" ------------------------------------------------------------------------------
Plug 'psliwka/vim-smoothie'
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }

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

" Status bar
" ------------------------------------------------------------------------------

Plug 'vim-airline/vim-airline'

" Unity
" ------------------------------------------------------------------------------
" Plug 'cjrh/vim-conda'
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


set background=dark " for the dark version
" syntax on
let g:dracula_colorterm = 0
" set background=light " for the light version
" colorscheme palenight
colorscheme dracula
" set background=dark
" " colorscheme nord
" colorscheme one
" colorscheme palenight
" silent! colorscheme one
hi Normal ctermbg=NONE guibg=NONE
" Treat <li> and <p> tags like the block tags they are
let g:html_indent_tags='li\|p'

" Set <space> to leader
let mapleader=' '
let maplocalleader='\'

" Turn off swapfiles
set noswapfile
set nobackup
set nowb

" Enable term 24 bit colour
set termguicolors

" Make it obvious where 80 characters is
set textwidth=80

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
" set spell
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

" Show the (partial) command as it’s being typed
" set showcmd

" Line numbers
set number
set relativenumber

set includeexpr=LoadMainNodeModule(v:fname)

" " Start scrolling before cursor gets to the edge
" set scrolloff=3
" set sidescrolloff=15
" set sidescroll=1


filetype plugin on

" Hide special characters
set nolist

" Disable continuation of comments
set formatoptions-=cro

"" Key mappings
" ------------------------------------------------------------------------------

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


" nnoremap <silent><leader>. :FZF<cr>
" nnoremap <silent><leader>space :FZF<cr>
nnoremap <C-P> :FZF<cr>
" nnoremap <c-i> :Buffers<cr>
" nnoremap <silent><leader>b :Buffers<cr>
nnoremap <C-B> :Buffers<cr>
" nnoremap <c-t> :Lines<cr>
nnoremap <C-F> :Rg!<cr>
" nnoremap <silent><leader>f :Rg!<cr>
" nnoremap <silent> <BS> :History:<cr>

" Split
noremap <silent><leader>h :split<cr>
noremap <silent><leader>v :vsplit<cr>

" Switch buffers
nnoremap <silent>H :silent bp<CR>
nnoremap <silent>L :silent bn<CR>

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
  " let g:airline_theme = 'dracula'
  " let g:airline_theme = 'nord'
  let g:airline#extensions#branch#enabled = 1
  let g:airline_powerline_fonts = 1
  let g:airline#extensions#tmuxline#enabled = 0
  let g:airline#extensions#tabline#enabled = 1 " Enable the list of buffers
  " let g:airline#extensions#tabline#buffers_label = ''
  let g:airline#extensions#tabline#fnamemod = ':t' " Show the filename
  " let g:airline#extensions#tabline#fnamecollapse = 0
  " let g:airline#extensions#tabline#show_tab_nr = 0
  " let g:airline#extensions#tabline#buffer_nr_show = 0
  " let g:airline#extensions#tabline#show_close_button = 0
  " let g:airline#extensions#coc#enabled = 0
  " let g:airline_left_sep = ''
  " let g:airline_left_alt_sep = ''
  " let g:airline_right_sep = ''
  " let g:airline_right_alt_sep = ''
  let g:airline#extensions#default#layout = [
        \ [ 'a', 'c' ],
        \ [ 'x', 'error', 'warning' ]
        \ ]
endif

" let g:python_highlight_all = 1
"
let g:ycm_path_to_python_interpreter = '/usr/bin/python3'
let g:conda_startup_was_prefix = 0

" Language Server configs
" ------------------------------------------------------------------------------
" let g:OmniSharp_server_use_mono = 1


" camelcasemotion
let g:camelcasemotion_key = '<leader>'
map <silent> w <Plug>CamelCaseMotion_w
map <silent> b <Plug>CamelCaseMotion_b
map <silent> e <Plug>CamelCaseMotion_e
map <silent> ge <Plug>CamelCaseMotion_ge
sunmap w
sunmap b
sunmap e
sunmap ge
"
" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif



" Python config

" let g:ale_linters = {
"       \   'python': ['flake8', 'pylint'],
"       \   'ruby': ['standardrb', 'rubocop'],
"       \   'javascript': ['eslint'],
"       \}
"
" let g:ale_fixers = {
"       \    'python': ['yapf'],
"       \}
" nmap <F10> :ALEFix<CR>
" let g:ale_fix_on_save = 1
"
"
" function! LinterStatus() abort
"   let l:counts = ale#statusline#Count(bufnr(''))
"
"   let l:all_errors = l:counts.error + l:counts.style_error
"   let l:all_non_errors = l:counts.total - l:all_errors
"
"   return l:counts.total == 0 ? '✨ all good ✨' : printf(
"         \   '😞 %dW %dE',
"         \   all_non_errors,
"         \   all_errors
"         \)
" endfunction
"
" set statusline=
" set statusline+=%m
" set statusline+=\ %f
" set statusline+=%=
" set statusline+=\ %{LinterStatus()}
"

nnoremap <silent><leader>. :FZF<cr>
" let g:Lf_ShortcutF = '<silent><leader>.'
