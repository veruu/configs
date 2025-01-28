" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'Vimjas/vim-python-pep8-indent'
Plugin 'dense-analysis/ale'

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
" colo veruu  " doesn't work in mac terminal *sad noises*
colo slate
autocmd BufNewFile,BufRead *.txt set syntax=conf

"normal code:
set tabstop=4
set shiftwidth=4
set expandtab

"8spaces-tab code:
"set tabstop=8
"set softtabstop=8
"set shiftwidth=8
"set noexpandtab

" vim-airline
let g:airline_theme = 'deus'

" ale
"
" brew install:
" - shellcheck
" - yamllint
" - flake8
" - pylint
" - mypy
" - bash-language-server
" - python-lsp-server
"
" git clone https://gitlab.com/cki-project/cki-tools
" cd cki-tools
" pip3 install --user -e .
" add /Users/veruu/Library/Python/<version>/bin to $PATH
"
set runtimepath+=/Users/veruu/git/cki-tools/vim/
let g:ale_completion_enabled = 1
let g:ale_completion_autoimport = 1
let g:ale_virtualtext_cursor = 0
let g:ale_set_loclist = 1
let g:ale_list_window_size = 6
let g:ale_open_list = 1
let g:ale_linters={'yaml': ['yamllint', 'shellcheck'], 'python': ['flake8', 'mypy', 'pylint', 'pylsp']}
let g:ale_yaml_yamllint_options = "-d '{extends: default, rules: {line-length: disable}}'"
let g:ale_python_pylsp_executable = '/opt/homebrew/bin/pylsp'
" SC1090: Not following sourced files (can't follow non-constant source)
" SC1091: Not following sourced files (file not found / no permissions / etc)
" SC3044: In POSIX sh, <thing> is undefined
let g:ale_yaml_shellcheck_options = '--exclude=SC1090,SC1091,SC3044 --no-cache'
let g:ale_sh_shell_default_shell = 'bash'
let g:ale_sh_shellcheck_options = '--exclude=SC1090,SC1091,SC3044'

inoremap <silent><expr> <Tab> pumvisible() ? "\<C-n>" : "\<TAB>"

" local autocomplete on the fly
autocmd InsertCharPre * call AutopcompleteOnTheFly()
fun! AutopcompleteOnTheFly()
  if  v:char =~ '\w'
    \ && getline('.')[col('.') - 3] =~ '\w'
    \ && getline('.')[col('.') - 2] =~ '\w'
    \ && getline('.')[col('.') - 1] !~ '\w'
    call feedkeys("\<C-n>\<C-p>", 'n')
  endif
endfun
