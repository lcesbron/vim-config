" DEFAULT SETTINGS {{{

" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Sync clipboard with host CURRENTLY NOT WORKING HAS TO DL A COMPATIBLE VIM
set clipboard=unnamedplus

" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=4

" Use space characters instead of tabs.
set noexpandtab

" Do not save backup files.
set nobackup

" Set Swap files to .vim/swap_files/ directory
" The // at the end tells vim to use absolute path
set directory=$HOME/.vim/swap_files//

" Do not wrap lines. Allow long lines to extend as far as the line goes.
set nowrap

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Set the commands to save in history default number is 20.
set history=1000

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
"set wildmode=list:longest
set wildmode=longest:full,full

" Set wildmode completion case insensitive
set wildignorecase

" Modern VIM ONLY : vertical wildmode
set wildoptions=pum

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" Supposed to detect vim folding in the buffers text.
set foldmethod=marker
set foldmarker={{{,}}}

" }}}

" VISUAL {{{

" Add hybrid numbers to each line on the left-hand side.
set number relativenumber

" Highlight cursor line underneath the cursor horizontally.
set cursorline

" Highlight cursor line underneath the cursor vertically.
set cursorcolumn

" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=10

" Displays trailing characters
set list
set listchars=tab:»\ ,trail:␣

let &t_SI = "\e[5 q"  " Vertical bar in insert mode
let &t_EI = "\e[2 q"  " Block in normal mode

" }}}

" KEYBINDS {{{

" Defines leader key
let mapleader = ' '

" Remove Highlight from the last search
nnoremap <silent> <leader> :nohlsearch<CR>


" Navigate the split view easier by pressing CTRL+j, CTRL+k, CTRL+h, or CTRL+l.
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
nnoremap \ <c-w>v

" delete a buffer without deleting the window

nnoremap <leader>bd :bp<bar>sp<bar>bn<bar>bd<CR>

" LSP
nnoremap <silent> <leader>d :ALEGoToDefinition<CR>
nnoremap <silent> <leader>s :ALEHover<CR>
nnoremap <silent> <leader>i :ALEDetail<CR>

" FZF
nnoremap <silent> <leader>sf :Files<CR>
nnoremap <silent> <leader><leader> :Buffers<CR>
nnoremap <silent> <leader>sl :Lines<CR>
nnoremap <silent> <leader>sg :Rg<Cr>

" NERD TREE
nnoremap <silent> <leader>e :NERDTreeToggle<CR>

" }}}

" PLUGINS {{{

call plug#begin('~/.vim/plugged')

" Gruvbox Theme
Plug 'morhetz/gruvbox'

" Auto pairs
Plug 'jiangmiao/auto-pairs'

" Status Line
Plug 'vim-airline/vim-airline'

" Better file explorer
Plug 'tpope/vim-vinegar'

" Git diffs
Plug 'airblade/vim-gitgutter'

" Language colors
" If problems with indentation check troubleshooting page on github
Plug 'sheerun/vim-polyglot'

" Linter & LSP {{{

let g:ale_completion_enabled=1

Plug 'dense-analysis/ale'

" }}}

" Fuzzy Finder {{{
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" }}}

" NERD Tree {{{
Plug 'preservim/nerdtree'

let NERDTreeShowHidden=1

" }}}

call plug#end()

" }}}

" COLORS {{{

" Activates true rgb colors
if has("termguicolors")
	set termguicolors
endif

" Turn syntax highlighting on.
syntax on

" Set colorscheme
colorscheme gruvbox

set background=light

"
