"" vim-plug
let s:plugin_install_directory=stdpath('data') . '/plugged'
call plug#begin(s:plugin_install_directory)

" general
Plug 'ctrlpvim/ctrlp.vim'
Plug 'ervandew/supertab'
Plug 'romainl/flattened'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" clojure
Plug 'Olical/conjure', {'for': 'clojure', 'tag': 'v4.9.0'}
Plug 'eraserhd/parinfer-rust', {'for': 'clojure', 'do': 'cargo build --release'}
Plug 'junegunn/rainbow_parentheses.vim', {'for': 'clojure'}
Plug 'tpope/vim-fireplace', {'for': 'clojure'}

" add plugins to &runtimepath
call plug#end()

"" general
colorscheme flattened_dark

syntax on
filetype plugin indent on

set hidden          " hide, instead of closing, buffers
set nobackup
set noswapfile

set cmdheight=1
set cursorline
set noshowmode      " hide the default mode text (e.g. -- INSERT -- below the statusline)
set nowrap
set number          " line numbers on
set ruler           " cursor position
set shortmess+=I    " do not show splash message

set ignorecase
set incsearch
set nohlsearch
set smartcase

set copyindent
set expandtab
set shiftwidth=4
set shiftround      " use multiple of shiftwidh when (un)indenting with '<' and '>'
set smartindent

set undolevels=500

set wildignore+=.idea,*.iml,*/target/*,*/generated-sources/*,*.class,*.so,*.swp,*.zip,*.log,*.git,*.project,node_modules,dist,lib

set fcs=eob:\   " hide tilde sign on blank lines
set list        " list whitespaces

set mousehide   " hide mouse while typing

set completeopt+=longest

" split windows navigation via ctrl
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-l> :wincmd l<CR>

"" leaders
let mapleader = ";"
let maplocalleader = ","

"" ctrl-p
let g:ctrlp_root_markers=['deps.edn', 'project.clj', 'pom.xml']
let g:ctrlp_working_path_mode='ra'

"" vim-airline
let g:airline_theme='solarized'

"" nerdtree
map <silent> <C-n> :NERDTreeToggle<CR>

"" rainbow parentheses
let g:rainbow#pairs=[['(', ')'], ['[', ']'], ['{', '}']]
augroup rainbow_parentheses_for_clojure
  autocmd!
  autocmd FileType clojure RainbowParentheses
augroup END

"" supertab
let g:SuperTabDefaultCompletionType="<C-X><C-O>"

