syntax on
set nu
set nocompatible              " 去除VI一致性,必須
filetype off                  " 必须

"设置 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/vundle'
Plugin 'Yggdroot/LeaderF'
Plugin 'fatih/vim-go'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()            " 必須

filetype plugin indent on    " 必須 加載vim自帶和插件相應的語法和文件類型相關腳本

let g:Lf_CommandMap = {'<C-K>': ['<Up>'], '<C-J>': ['<Down>']}
let g:Lf_ShortcutF = '<C-P>'


"ycm配置
map<A-d> :YcmCompleter GoToDefinitionElseDeclaration<CR>
set incsearch
let g:ycm_goto_buffer_command = 'same-buffer'

highlight Lf_hl_match gui=bold guifg=Blue cterm=bold ctermfg=21
highlight Lf_hl_matchRefine  gui=bold guifg=Magenta cterm=bold ctermfg=201
let g:Lf_DefaultMode = 'NameOnly'

"let g:solarized_termcolors=256
set background=dark
colorscheme solarized

let spell=1
set encoding=utf8
