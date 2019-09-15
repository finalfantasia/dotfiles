" vim-plug
call plug#begin('~/.local/share/nvim/plugged')

Plug 'eraserhd/parinfer-rust', {'for': 'clojure', 'do': 'cargo build --release'}
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'kien/ctrlp.vim'
Plug 'romainl/flattened'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fireplace', {'for': 'clojure'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" add plugins to &runtimepath
call plug#end()

colorscheme flattened_dark

syntax on
filetype plugin indent on

set hidden          " hide, instead of closing, buffers
set nobackup
set noswapfile

set cmdheight=1
set noshowmode      " hide the default mode text (e.g. -- INSERT -- below the statusline)
set ruler           " cursor position
set number          " line numbers on
set cursorline
set nowrap

set nohlsearch
set ignorecase
set smartcase

set smartindent
set copyindent
set shiftwidth=4
set shiftround      " use multiple of shiftwidh when (un)indenting with '<' and '>'
set expandtab

set undolevels=500

set wildignore+=.idea,*.iml,*/target/*,*/generated-sources/*,*.class,*.so,*.swp,*.zip,*.log,*.git,*.project,node_modules,dist,lib

set list        " list whitespaces

set mousehide   " hide mouse while typing

" split windows navigation via ctrl
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-l> :wincmd l<CR>

" ctrl-p
let g:ctrlp_working_path_mode='ra'
let g:ctrlp_root_markers=['deps.edn', 'project.clj', 'pom.xml']

" vim-airline
let g:airline_theme='solarized'

" nerdtree
map <silent> <C-n> :NERDTreeToggle<CR>

" rainbow parentheses
let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]
call rainbow_parentheses#activate()

