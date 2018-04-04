let s:dein_dir = expand('~/.vim/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

if &compatible
	set nocompatible
endif

if !isdirectory(s:dein_repo_dir)
  execute '!git clone https://github.com/Shougo/dein.vim.git' s:dein_repo_dir
endif

execute 'set runtimepath^=' . s:dein_repo_dir

call dein#begin(s:dein_dir)
"ここにプラグインを追加
call dein#add('Shougo/dein.vim')
call dein#add('vim-airline/vim-airline')
call dein#add('vim-airline/vim-airline-themes')
call dein#add('udalov/kotlin-vim')
call dein#add('cohama/lexima.vim')
call dein#add('scrooloose/nerdtree')
call dein#add('w0ng/vim-hybrid')
call dein#add('rust-lang/rust.vim')
call dein#add('fatih/vim-go')
"call dein#add('Yggdroot/indentLine')

"call dein#load_toml('~/.vim/dein/rc/dein.toml')
"call dein#load_toml('~/.vim/dein/rc/dein_lazy.toml')

:

call dein#end()

if dein#check_install()
  call dein#install()
endif

filetype plugin indent on

"文字コードをUFT-8に設定
set fenc=utf-8
" バックアップファイルを作らない
set nobackup
" スワップファイルを作らない
set noswapfile
" 編集中のファイルが変更されたら自動で読み直す
set autoread
" バッファが編集中でもその他のファイルを開けるように
set hidden
" 入力中のコマンドをステータスに表示する
set showcmd


" 見た目系
" 行番号を表示
set number
" カレント行ハイライト
set cursorline
" アンダーラインを引く(color terminal)
highlight CursorLine cterm=underline ctermfg=NONE ctermbg=NONE
" アンダーラインを引く(gui)
highlight CursorLine gui=underline guifg=NONE guibg=NONE
" 行末の1文字先までカーソルを移動できるように
set virtualedit=onemore
" インデントはスマートインデント
set smartindent
" 括弧入力時の対応する括弧を表示
set showmatch
" ステータスラインを常に表示
set laststatus=2
" コマンドラインの補完
set wildmode=list:longest
" 折り返し時に表示行単位での移動できるようにする
nnoremap j gj
nnoremap k gk


" Tab系
" 不可視文字を可視
"set list listchars=tab:\ \:
" 行頭以外のTab文字の表示幅（スペースいくつ分）
set tabstop=3
" 行頭でのTab文字の表示幅
set shiftwidth=3

"大文字小文字を区別しないで検索
set ignorecase

syntax on
set mouse=a

set laststatus=2
"truecolor対応
set termguicolors

set background=dark

set wildmenu " コマンドモードの補完
set history=5000 " 保存するコマンド履歴の数

let g:indentLine_setColors = 0
let g:airline_powerline_fonts = 1
set laststatus=2
