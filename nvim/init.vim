"--------------------------------------------------------------
"          encoding & color                                 <<<
"--------------------------------------------------------------
set encoding=utf8
scriptencoding utf8
set fileencoding=utf-8
set termencoding=utf8
set fileencodings=utf-8,ucs-boms,euc-jp,ep932
set fileformats=unix,dos,mac
set ambiwidth=double
set nobomb
set t_Co=256
" <<<

"--------------------------------------------------------------
"          Vim Options                                      <<<
"--------------------------------------------------------------
" スワップファイルの作成先を変更
set noswapfile

" ヤンクをクリップボードへ繋ぐ
set clipboard+=unnamed

" ビープ音を消す
set belloff=all

" 行番号系
set number
set relativenumber

" タイトル系
set title

" 挿入モードでバックスペースで削除できるようにする
set backspace=indent,eol,start

" 検索するときに大文字小文字を区別しない
set ignorecase

" 検索した時にハイライト
set hlsearch
" <<<

"--------------------------------------------------------------
"          indent                                           <<<
"--------------------------------------------------------------
filetype plugin indent on
set expandtab
set tabstop=2
set softtabstop=2
set autoindent
set smartindent
set shiftwidth=2
au FileType go setlocal sw=4 ts=4 sts=4 noet
" <<<

"--------------------------------------------------------------
"          key bind                                         <<<
"--------------------------------------------------------------
vnoremap x "_x
nnoremap x "_x
nnoremap <silent> , :bprev<CR>
nnoremap <silent> . :bnext<CR>
nnoremap \ :%s/old/new/g<LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT>
nnoremap bd :bd<CR>

" 括弧の補完
inoremap { {}<LEFT>
inoremap ( ()<LEFT>
inoremap [ []<LEFT>
inoremap < <><LEFT>

inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap (<Enter> ()<Left><CR><ESC><S-o>
inoremap [<Enter> []<Left><CR><ESC><S-o>
inoremap <<Enter> <><Left><CR><ESC><S-o>

" クオーテーションの補完
inoremap ' ''<LEFT>
inoremap " ""<LEFT>

" insertモードでemacsのキーバインドを使えるようにする
imap <C-p> <Up>
imap <C-n> <Down>
imap <C-b> <Left>
imap <C-f> <Right>
imap <C-a> <C-o>:call <SID>home()<CR>
imap <C-e> <End>
imap <C-d> <Del>
imap <C-h> <BS>
imap <C-k> <C-r>=<SID>kill()<CR>

" visulaモードで選択してからのインデント調整で調整後に選択範囲を開放しない
vnoremap > >gv
vnoremap < <gv

" 画面分割系
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap ss :<C-u>sp<CR><C-w>j
nnoremap sv :<C-u>vs<CR><C-w>l

" esc -> jj
inoremap <silent> jj <ESC>

" 検索ハイライト削除
nnoremap <C-L> :nohlsearch<CR><C-L>

" <<<

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here like this:
  "call dein#add('Shougo/neosnippet.vim')
  "call dein#add('Shougo/neosnippet-snippets')
  let s:toml_dir = expand('$XDG_CONFIG_HOME/nvim/dein')

  call dein#load_toml(s:toml_dir . '/plugins.toml', {'lazy': 0})
  call dein#load_toml(s:toml_dir . '/plugins_lazy.toml', {'lazy': 1})

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------


"--------------------------------------------------------------
"          colorscheme                                      <<<
"--------------------------------------------------------------
if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif

syntax on
colorscheme onedark
" <<<
