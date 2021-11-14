set nocompatible            " disable compatibility to old-time vi
set autoread
set showmatch               " show matching
set ignorecase              " case insensitive
set mouse=v                 " middle-click paste with
set hlsearch                " highlight search
set incsearch               " incremental search
set expandtab               " converts tabs to white space
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
" set cc=80                   " set an 80 column border for good coding style
filetype plugin indent on   "allow auto-indenting depending on file type
filetype on
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
set syntax=perl             " Force Syntax coloring for a file that has no extension .pl
" set spell                 " enable spell check (may need to download language package)
set relativenumber

" NeoVim color support
if has("termguicolors")
    set termguicolors
endif

syntax enable
set t_Co=256
set t_ut=
set background=dark
" colorscheme gruvbox
colorscheme one

" Code highlighting
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1

"*****************************************************************************
"" Basic Setup
"*****************************************************************************"
"" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set bomb
" set binary
set laststatus=2


"" Fix backspace indent
set backspace=indent,eol,start

"" Tabs. May be overriten by autocmd rules
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab

"" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase       " Automatically switch search to case-sensitive
                    " when search query contains an uppercase letter

"" Directories for swp files
set nobackup
set noswapfile

set fileformats=unix,dos,mac
set showcmd

"" Use modeline overrides
set modeline
set modelines=10

set title
set titleold="Terminal"
set titlestring=%F

set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\

" Remove all trailing whitespace by pressing <F5>
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

if exists("*fugitive#statusline")
 set statusline+=%{fugitive#statusline()}
endif

" Plugin: vim-airline
" let g:airline_theme = 'dracula'
" Onedark theme looks better than dracula
let g:airline_theme = 'onedark'
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline_skip_empty_sections = 1
" Powerline fonts for airline
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''



if has("gui_running")
  if has("gui_mac") || has("gui_macvim")
    set guifont=Menlo:h12
    set transparency=7
  endif
else
  let g:CSApprox_loaded = 1

  " IndentLine
  let g:indentLine_enabled = 1
  let g:indentLine_concealcursor = 0
  let g:indentLine_char = '┆'
  let g:indentLine_faster = 1

endif

" Init deoplete during startup
let g:deoplete#enable_at_startup = 1

" Split Terminal settings
let g:split_term_default_shell = "zsh"
highlight TermCursor ctermfg=red guifg=red
set splitright  " Put the new window right of the current one
set splitbelow

"" Terminal settings
tnoremap <Leader><ESC> <C-\><C-n>

"" Window navigation function
"" Make ctrl-h/j/k/l move between windows and auto-insert in terminals
func! s:mapMoveToWindowInDirection(direction)
    func! s:maybeInsertMode(direction)
        stopinsert
        execute "wincmd" a:direction

        if &buftype == 'terminal'
            startinsert!
        endif
    endfunc

    execute "tnoremap" "<silent>" "<C-" . a:direction . ">"
                \ "<C-\\><C-n>"
                \ ":call <SID>maybeInsertMode(\"" . a:direction . "\")<CR>"
    execute "nnoremap" "<silent>" "<C-" . a:direction . ">"
                \ ":call <SID>maybeInsertMode(\"" . a:direction . "\")<CR>"
endfunc
for dir in ["h", "j", "l", "k"]
    call s:mapMoveToWindowInDirection(dir)
endfor

" Nerdtree tweaks

"" Keybindings
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

"" Start NERDTree and leave the cursor in it.
" autocmd VimEnter * NERDTree

"" Open the nerdtree window when opening up Nvim, but put
"" the cursor in the file-editing window
augroup nerdtree_open
    autocmd!
    autocmd VimEnter * NERDTree | wincmd p
augroup END

"" The ignore patterns are regular expression strings and seprated by comma
let NERDTreeIgnore = ['\.pyc$', '^__pycache__$']

"" Start NERDTree when Vim starts with a directory argument.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
    \ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif

"" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

"" Show current root as relative path from $HOME in status bar
let NERDTreeStatusline="%{exists('b:NERDTree')?fnamemodify(b:NERDTree.root.path.str(), ':~'):''}"

" Plugin (Hightlight Yank)
hi HighlightedyankRegion cterm=reverse gui=reverse
"" set highlight duration time to 1000 ms, i.e., 1 second
let g:highlightedyank_highlight_duration = 1000

" Install plugins
call plug#begin(stdpath('config') . '/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dracula/vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'bronson/vim-trailing-whitespace'
Plug 'Raimondi/delimitMate'

"" Deoplete (auto-completions)
Plug 'zchee/deoplete-jedi'

"" Python Bundle
Plug 'davidhalter/jedi-vim'

"" Terminal split support
Plug 'vimlab/split-term.vim'

"" Nerdtree
Plug 'scrooloose/nerdtree'

"" Even more prettier statusline
"" Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}

"" Display dev icons
Plug 'ryanoasis/vim-devicons' " vimscript

"" Another alternative powerline package
"" Plug 'rbong/vim-crystalline'

"" Hightlight Yank
Plug 'machakann/vim-highlightedyank'

"" Nerd commenter (Code Commenter)
" Shortcut key: < "\" (leader key - backslash) + cc>
Plug 'scrooloose/nerdcommenter'

" Code formatter (e.g. yapf)
" Also install yapf via pip3
" pip3 install yapf
Plug 'sbdchd/neoformat'

" Auto bracket pair
Plug 'jiangmiao/auto-pairs'

" Telescope (fast code search)
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

call plug#end()
