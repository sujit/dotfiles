" Basic configs
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
" Allow backspacing over indention, line breaks and insertion start
set backspace=indent,eol,start
set incsearch           " Find as you type, extremely useful
set bg=dark             " Dark background
set expandtab           " Handle tabs correctly. [Use :retab to remap all tabs to space at once]
set ts=4 sts=4 sw=4     " Consider tabs with 4 spaces
set shiftround          " When shifting lines, round the indentation to the nearest multiple of “shiftwidth.”
set smarttab            " Insert “tabstop” number of spaces when the “tab” key is pressed
set cursorline          " Highlight the line currently under cursor
set cursorcolumn        " Enable column visibility at current cursor offset
set mouse=a             " Enable mouse for scrolling and resizing
set t_Co=256            " Enable 256bit color support. Helps in remote sessions
set autochdir           " Automatically switch to current file directory
set history=1000        " Set a bunch of history lines, default is 20
set showmode            " Display the current mode
set linespace=0         " No extra spaces between rows
set nomodeline          " Don't use modeline (security)
set synmaxcol=300       " Faster when opening files with large lines (def: 3000)
" Show line number on the current line
" and relative numbers on all other lines
" set relativenumber
set winminheight=0      " Windows can be 0 line high

" Better unix/windows compatibility
set viewoptions=folds,options,cursor,unix,slash
set bg=dark             " Change to light based on your preference
set nu                  " Enable line number visibility
set hlsearch            " Highlight current search pattern
set smartcase           " Automatically switch search to case-sensitive
                        " when search query contains an uppercase letter
set ai                  " Enable autoindent
" Vim editor font
" set gfn=Ubuntu\ Mono\ derivative\ Powerline\ 10
colorscheme gruvbox     " Editor theme
" BOM often causes trouble, UTF-8 is awesome!
set encoding=utf-8 nobomb

" Instant auto-reload of vimrc configs
au BufWritePost .vimrc so ~/.vimrc
set autowriteall
set sel=inclusive       " Selects texts including the last missed character

set wildmenu            " Display command line’s tab complete options as a menu
set wildmode=longest:full
" Ignore files matching these patterns when opening files based on a glob pattern
set wildignore+=*.o,*.a,*.so,*.obj,*.lib,*.ncb,*.opt,*.plg,.svn,.git,*.lo,*.la,*.in
set title                " Change console title as per the opened file
set titleold=""
set titlestring=VIM:\ %F
set autoread             " Autoread buffers
set hidden               " Allow buffer switching without saving

" RegEx and searches
set magic                " Enable RegEx match support
set gdefault             " RegExp global by default
" Make searches case-insensitive,
" unless they contain upper-case letters
set ignorecase smartcase
set showmatch            " Show matching brackets/parenthesis
set laststatus=2         " Always display the status bar
set ruler                " Show line numbers
set cmdheight=2          " Have some space for the command box


" Visual bell related
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au! GuiEnter * set t_vb= " Disable visual bell
set vb t_vb=             " Deactive visual bell beep sound
set noerrorbells         " Disable beep on errors


" Remove all trailing whitespace by pressing F5
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>


" Syntax Highlighting support + snort rules syntax identification
" Snort Vim Syntax: https://github.com/sploit/snort-vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype on
syntax on
filetype plugin on
filetype indent on
autocmd BufRead,BufNewFile *.rules set filetype=snort  " Only when syntax files are snort.vim and so on.
autocmd BufRead,BufNewFile *.rules set filetype=hog    " Only when syntax files are hog.vim and so on.
autocmd BufRead,BufNewFile *.rules syntax on


" Code Folding support
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set foldenable           " Enable code folding support
" set foldmethod=syntax


" Deactivate automatic backup file creation
" Not needed for me at least
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nowritebackup
set noswapfile
set nobackup


" Highlight trailing whitespace, but not while typing
" Highlight trailing whitespace in vim on non empty lines, but not while
" typing in insert mode!
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
highlight ExtraWhitespace ctermbg=red guibg=Brown
au ColorScheme * highlight ExtraWhitespace guibg=red
au BufEnter * match ExtraWhitespace /\S\zs\s\+$/
au InsertEnter * match ExtraWhitespace /\S\zs\s\+\%#\@<!$/
au InsertLeave * match ExtraWhiteSpace /\S\zs\s\+$/


" Easy increment/decrement of int values
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap + <C-a>
nnoremap - <C-x>


" Highlight trailing whitespaces
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
highlight WhitespaceEOL ctermbg=Red guibg=Red
match WhitespaceEOL /\s\+$/


" Vim status line
" Display useful data in status lines
" Use this if you are not using vim-powerline
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]


" Buffers handling
" List buffers and switch to a buffer quickly
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <leader>b :ls<CR>:buffer<Space>


" Change :W to :w automatically if typed wrongly
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
cnoreabbrev W w


" Clear search highlighting with <Esc>
" For some reasons after adding the below line, it destroys the functionality of arrows
" nnoremap <esc> :noh<cr><esc>
" This below line fixes that issue :) Key => <F3>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <F3> :set hlsearch!<CR>


" Open new tab with <Ctrl-T>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <C-T> :tabnew<CR>


" Python specific which handles indentation quite well
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufRead,BufNewFile *.py syntax on
autocmd BufRead,BufNewFile *.py set ai
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,with,try,except,finally,def,class
au FileType python setl autoindent tabstop=4 expandtab shiftwidth=4 softtabstop=4
let python_highlight_all = 1
let python_highlight_exceptions=0
let python_highlight_builtins=0
au FileType python syn keyword pythonDecorator True None False self
autocmd BufRead *.py highlight BadWhitespace ctermbg=red guibg=red
autocmd BufRead *.py match BadWhitespace /^\t\+/
autocmd BufRead *.py match BadWhitespace /\s\+$/


" Understand Snort rule files
" before doing this, copy all snort*.vim files to their correspnding dirs
" Syntax Files: https://github.com/sploit/snort-vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufRead,BufNewFile *.rules set filetype=snort  " Only when syntax files are snort.vim and so on.
autocmd BufRead,BufNewFile *.rules set filetype=hog    " Only when syntax files are hog.vim and so on.
autocmd BufRead,BufNewFile *.rules syntax on


" Use sane RegExes
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap / /\v
vnoremap / /\v


" Convert selected texts to raw hex formats and the other way around
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" \ (Char) =>    Converts selected texts (visual mode) to hex format
" / (Char) =>    Converts selected hex formatted texts (visual mode) to ascii format
vnoremap \ :<c-u>s/\%V./\=printf("%x",char2nr(submatch(0)))/g<cr><c-l>`<
vnoremap / :<c-u>s/\%V\x\x/\=nr2char(printf("%d", "0x".submatch(0)))/g<cr><c-l>`<


" Making <Shift+Insert> accessible easily to access clipboard data
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Trick 01
map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>

" Trick 02
map <S-Insert> <C-r>"
map! <S-Insert> <C-r>"

" Trick 03
set clipboard+=unnamed  " use the clipboards of vim and win
set paste               " Paste from a windows or from vim
set pastetoggle=<F12>   " pastetoggle (sane indentation on pastes)
set go+=a               " Visual selection automatically copied to the clipboard

" Trick 04 [Fair and safe] This wont map <Shift+Insert> though
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa

" Disable Powerline Title when vim exists
set notitle
let &titleold = getcwd()


" References
" https://www.shortcutfoo.com/blog/top-50-vim-configuration-options/
" https://github.com/spf13/spf13-vim/blob/3.0/.vimrc
" Top themes
" Gruvbox: https://raw.githubusercontent.com/morhetz/gruvbox/master/colors/gruvbox.vim
" One: https://raw.githubusercontent.com/rakr/vim-one/master/colors/one.vim
" Onehalf Light: https://raw.githubusercontent.com/sonph/onehalf/master/vim/colors/onehalflight.vim
" Onehalf Dark: https://raw.githubusercontent.com/sonph/onehalf/master/vim/colors/onehalfdark.vim
" PaperColor: https://raw.githubusercontent.com/NLKNguyen/papercolor-theme/master/colors/PaperColor.vim
" Ayu: https://raw.githubusercontent.com/ayu-theme/ayu-vim/master/colors/ayu.vim
" Dracula: https://raw.githubusercontent.com/dracula/vim/e7154372adc95d637ccd911c2f8601d9ff2eac1f/colors/dracula.vim
" Palenight: https://raw.githubusercontent.com/drewtempelmeyer/palenight.vim/master/colors/palenight.vim
" Solarized: https://raw.githubusercontent.com/altercation/vim-colors-solarized/master/colors/solarized.vim
