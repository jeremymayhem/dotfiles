set nocompatible

set vb t_vb=    " Kill the flashy beep things
set lazyredraw  " Kill the flicker
set showmode
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set scrolloff=5
set sidescrolloff=5
set hidden
set wildmode=longest,list
set showmatch
set smartcase
set ignorecase
set copyindent
set noerrorbells
set undolevels=200
set directory=~/.cache/vim
set backupdir=~/.cache/vim
set ai!     " Turn on auto indent
set splitbelow
set splitright
set incsearch
set hlsearch
set nobackup
set noswapfile
set nowb
set autoread
set laststatus=2
set wildignore+=.pyc,.swp
set history=1000
set mouse=a

" Window motion improvements
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Don't slap EOL on these types
autocmd FileType xml setlocal noeol binary
autocmd FileType xsd setlocal noeol binary

" Go stock
if $VIM_BARE
  setglobal noloadplugins
  finish
endif

" Set up line number configuration (with pretty colors)
set number
set relativenumber
highlight CursorLineNr ctermFg=132
set numberwidth=5

filetype plugin on

let powerline_font_available = $POWERLINE_FONT
let nerd_font_available = $NERD_FONT

let vimDir = '$HOME/.vim'
let &runtimepath.=','.vimDir

if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

set t_co=256

if (&t_co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
endif

" Section: Color scheme configuration

if empty($VIM_COLORSCHEME)
  let $VIM_COLORSCHEME = "jellybeans"
endif

if !empty($VIM_AIRLINE_THEME)
  let g:airline_theme=$VIM_AIRLINE_THEME
else
  let g:airline_theme='one'
endif

if ($VIM_COLORSCHEME == 'gruvbox')
  set background=dark
  let g:gruvbox_sign_column="bg0"
  let g:gruvbox_contrast_dark="medium"
  hi Normal ctermbg=none
  hi NonText ctermbg=none
  colorscheme gruvbox
elseif ($VIM_COLORSCHEME == 'one')
  set background=dark
  colorscheme one
else
  colorscheme $VIM_COLORSCHEME
endif

set display=lastline

" Keep undo history across sessionis by storing it in a filereadable
if has('persistent_undo')
  let myUndoDir = expand(vimDir.'/undodir')
  call system('mkdir ' . vimDir)
  call system('mkdir ' . myUndoDir)
  let &undodir = myUndoDir
  set undofile
endif

" Section: Plugin configuration

" vim-startify configuration
let g:startify_files_number = 15
let g:startify_session_autoload = 1
let g:startify_relative_path = 1
let g:startify_session_before_save = [
  \ 'echo "Saving..."',
  \ ]
let g:startify_custom_footer = ['', "   Vim awesomeness brought to you by STARLORD", '']
let g:startify_fortune_use_unicode=1
let g:startify_padding_left=3

if filereadable(expand('~/.vimrc.local'))
  source ~/.vimrc.local
endif

" vim:set et sw=2 foldmethod=expr
