
set nocompatible              " be iMproved, required
filetype off                  " required

set shell=/bin/bash
set rtp+=~/.vim/bundle/Vundle.vim

set mouse=a
set splitbelow
set nosmd

if has('nvim')
  " pull in normal vim directories
  set runtimepath+=/usr/share/vim/vimfiles
  set runtimepath+=~/.vim/
endif

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'bling/vim-bufferline'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdtree-project-plugin'
Plugin 'sickill/vim-monokai'
Plugin 'peterhoeg/vim-qml'
Plugin 'ziglang/zig.vim'
Plugin 'ryanoasis/vim-devicons'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'

if has('nvim')
	Plugin 'neoclide/coc.nvim'
endif	
call vundle#end()


" don't remove this. i think nerdtree needs it?
filetype plugin indent on    " required

autocmd StdinReadPre * let s:std_in=1

" automatically open nerdtree and a terminal if you
" open on a directory instead of a file
" (i.e. 'vim ~/code/quake2/'
if has('nvim')
autocmd VimEnter * ++nested if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | exe 'setlocal winhighlight=Normal:NerdBg' | wincmd p | ene | exe 'cd '.argv()[0] | exe '12split term://bash' | set nonumber | endif
else
autocmd VimEnter * ++nested if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | exe 'set termwinsize=12x0' | exe 'term' | set nonumber | endif
endif

" line numbers
set number

" set vim-multiple-cursors to work more like sublime/vscode
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_start_word_key      = '<C-d>'
let g:multi_cursor_select_all_word_key = '<A-d>'
let g:multi_cursor_start_key           = 'g<C-d>'
let g:multi_cursor_select_all_key      = 'g<A-d>'
let g:multi_cursor_next_key            = '<C-d>'
let g:multi_cursor_prev_key            = '<C-D>'
let g:multi_cursor_skip_key            = '<C-n>'
let g:multi_cursor_quit_key            = '<Esc>'

let g:airline#extensions#tabline#enabled = 1

" minimal nerdtree, change arrows
let g:NERDTreeMinimalUI = 1
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''

" no tildes
if has('nvim')
	set fillchars=fold:\ ,vert:\│,eob:\ ,msgsep:‾
else
	" only works in 8.2.2508 or later
	let &fillchars ..= ',eob: '
endif
" color stuff
"
syntax enable
colorscheme monokai
set termguicolors
hi EndOfBuffer ctermbg=none
hi Pmenu guibg=#141310
hi NerdBg guibg=#343328

let g:terminal_color_0  = '#49483e'
let g:terminal_color_1  = '#f92672'
let g:terminal_color_2  = '#a6e22e'
let g:terminal_color_3  = '#fd971f'
let g:terminal_color_4  = '#66d9ef'
let g:terminal_color_5  = '#ae81ff'
let g:terminal_color_6  = '#a1efe4'
let g:terminal_color_7  = '#f8f8f2'
let g:terminal_color_8  = '#75715e'
let g:terminal_color_9  = '#fc5c94'
let g:terminal_color_10 = '#c1f161'
let g:terminal_color_11 = '#feb257'
let g:terminal_color_12 = '#8de6f7'
let g:terminal_color_13 = '#c2a1ff'
let g:terminal_color_14 = '#bbf7ef'
let g:terminal_color_15 = '#f8f8f0'
