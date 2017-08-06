" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'klen/python-mode'

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
"                     auto-approve removal
call vundle#end()

filetype plugin indent on
filetype plugin on
filetype indent on

if v:lang =~ "utf8$" || v:lang =~ "UTF-8$"
   set fileencodings=ucs-bom,utf-8,latin1
endif

syn on se title

set nocompatible
set bs=indent,eol,start
set ai
set ruler
set showcmd
set noignorecase
set number
set mouse=v
set hlsearch
set cursorline
set wrapscan
set shortmess+=c
let g:sh_fold_enabled=1
colo veruu

"normal code:
"set tabstop=4
"set shiftwidth=4
"set expandtab

"8spaces-tab code:
set tabstop=8
set softtabstop=8
set shiftwidth=8
set noexpandtab

" YouCompleteMe
let g:ycm_confirm_extra_conf = 0
let g:ycm_global_ycm_extra_conf = '/home/vkabatova/.ycm_global.py'
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_complete_in_comments = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_register_as_syntastic_checker = 0
"let g:ycm_python_binary_path = '/usr/bin/python3'

" syntastic
let g:syntastic_check_on_wq = 0
let g:syntastic_cpp_compiler_options = ' -std=c++11'
let g:syntastic_ignore_files = ['\.py$']
let g:syntastic_sh_checkers = ['shellcheck']
let g:syntastic_go_checkers = ['go', 'gofmt']

" python-mode
let g:pymode_options_max_line_length = 79
let g:pymode_indent = 0
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
"let g:pymode_syntax_print_as_function = 1
let g:pymode_rope = 0
let g:pymode_lint = 1
let g:pymode_lint_message = 1
let g:pymode_lint_unmodified = 1
let g:pymode_lint_checkers = ['pyflakes', 'pep8', 'pylint']
let g:pymode_lint_options_pyflakes = { 'builtins': ['_', 'FileNotFoundError'] }
let g:pymode_lint_on_fly = 1
let g:pymode_lint_on_write = 1
let g:pymode_folding = 1
let g:pymode_rope_completion = 1
let g:pymode_rope_complete_on_dot = 0
