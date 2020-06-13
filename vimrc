"Plugin"
call plug#begin('~/.vim/plugged')
Plug 'ctrlpvim/ctrlp.vim' 
Plug 'majutsushi/tagbar'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries'}
Plug 'tpope/vim-commentary' 
Plug 'ycm-core/YouCompleteMe'
Plug 'preservim/nerdtree' 
Plug 'jiangmiao/auto-pairs' 
Plug 'itchyny/lightline.vim' 
Plug 'jcherven/jummidark.vim' 
call plug#end()

"setting"
set nu

syntax on

set nocompatible

set confirm

set mouse=a

set tabstop=4
set shiftwidth=4
set expandtab
set smarttab

set autoread
set cindent

set autoindent
set smartindent

set hlsearch
set background=dark

set showmatch
set ruler

set foldenable
set fdm=syntax

set fdm=manual

set novisualbell
set laststatus=2

"浅色显示当前行
"autocmd InsertLeave * se nocul
"
""用浅色高亮当前行
autocmd InsertEnter * se cul

"显示输入的命令
"set showcmd
"
""被分割窗口之间显示空白
set fillchars=vert:/

set fillchars=stl:/

set fillchars=stlnc:/
"plugin setting"
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:lightline = { 'colorscheme': 'wombat',}
let g:multi_cursor_quit_key = '<Esc>'
map <F3> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>
colorscheme jummidark
let g:go_fmt_command = "goimports"
let g:go_autodetect_gopath = 1
let g:go_list_type = "quickfix"
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_methods = 1
let g:go_highlight_generate_tags = 1
let g:godef_split=2
set completeopt-=preview
nmap <F8> :TagbarToggle<CR>
