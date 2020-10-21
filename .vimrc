syntax on
set nu
set backspace=2
set nocompatible              " 去除VI一致性,必須
filetype off                  " 必须

:set tabstop=4 
:set shiftwidth=4 
set expandtab

set fillchars+=vert:+

autocmd FileType yaml setlocal ai ts=2 sw=2 et

"设置 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'scrooloose/nerdtree'
Plugin 'ryanoasis/vim-devicons'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'gmarik/vundle'
Plugin 'Yggdroot/LeaderF'
Plugin 'fatih/vim-go'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'tell-k/vim-autopep8' 
Plugin 'Lokaltog/vim-powerline'
Plugin 'Chiel92/vim-autoformat'
Plugin 'rhysd/vim-clang-format'
Plugin 'vim-ruby/vim-ruby'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'

call vundle#end()            " 必須

filetype plugin indent on    " 必須 加載vim自帶和插件相應的語法和文件類型相關腳本
map <F2> :NERDTreeMirror<CR>
map <F2> :NERDTreeToggle<CR>

let g:WebDevIconsOS = 'Darwin'


let g:Lf_CommandMap = {'<C-K>': ['<Up>'], '<C-J>': ['<Down>']}
let g:Lf_ShortcutF = '<C-P>'

let g:airline_theme='term'
let g:airline#extensions#hunks#enabled = 1

"autopep8设置"
let g:autopep8_disable_show_diff=1
au BufWrite *.py :Autoformat

"rainbow_parentheses设置
" \ ['darkred',     'DarkOrchid3'],
"\ ['darkgray',    'DarkOrchid3'],
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

let python_highlight_all=1

"ycm配置
map<Space> :YcmCompleter GoToDefinitionElseDeclaration<CR>
set incsearch
let g:ycm_goto_buffer_command = 'same-buffer'
"let g:ycm_server_python_interpreter='/usr/local/bin/python3'
"let g:ycm_global_ycm_extra_conf = '/Users/rtzzc/.vim/.ycm_extra_conf.py'
let g:ycm_clangd_uses_ycmd_caching = 0
let g:ycm_use_clangd = 1
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf=1
let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_collect_identifiers_from_tags_files=1

highlight Lf_hl_match gui=bold guifg=Blue cterm=bold ctermfg=21
highlight Lf_hl_matchRefine  gui=bold guifg=Magenta cterm=bold ctermfg=201
let g:Lf_DefaultMode = 'NameOnly'

let g:clang_format#auto_format=1

"let g:solarized_termcolors=256
set background=dark
colorscheme solarized

let spell=1
set encoding=utf8
