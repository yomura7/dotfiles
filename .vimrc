" setting
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
" exモード無効
nnoremap Q <Nop>
" Ctrl-jでESC
noremap! <C-j> <esc>
vnoremap <C-j> <esc>
noremap <C-j> <S-j>
noremap <C-k> <S-k>
" コロンとセミコロンを入れ替える
noremap ; :
noremap : ;
" ノーマルモードで改行
noremap <CR> a<CR><esc>

" yank系
" クリップボードと連携する"
set clipboard+=unnamed
" visual bellを無効化する"
set visualbell t_vb=
" x キー削除でデフォルトレジスタに入れない
noremap x "_x
noremap X "_X
" s キー削除でデフォルトレジスタに入れない
noremap s "_s
noremap S "_S
" Yで行末までyank
nnoremap Y y$

" 移動系"
noremap <S-h> ^
noremap <S-j> 5j
noremap <S-k> 5k
noremap <S-l> $

" 見た目系
" 行番号を表示
set number
" カーソルの位置を表示
set ruler
" 現在の行を強調表示
set cursorline
" 行末の1文字先までカーソルを移動できるように
set virtualedit=onemore
" インデントはスマートインデント
set smartindent
" ビープ音を可視化
set visualbell
" 括弧入力時の対応する括弧を表示
set showmatch
" ステータスラインを常に表示
set laststatus=2
" コマンドラインの補完
set wildmode=list:longest
" 折り返し時に表示行単位での移動できるようにする
nnoremap j gj
nnoremap k gk

" 構文ハイライトを有効にする
syntax enable
colorscheme default

" Tab系
" 不可視文字を可視化
set list
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%
" Tab文字を半角スペースにする
set expandtab
" 行頭以外のTab文字の表示幅（スペースいくつ分）
set tabstop=2
" 行頭でのTab文字の表示幅
set shiftwidth=2

" IME
set iminsert=0
set imsearch=0
set imdisable

" 検索系
" 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase
" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase
" 検索文字列入力時に順次対象文字列にヒットさせる
set incsearch
" 検索時に最後まで行ったら最初に戻る
set wrapscan
" 検索語をハイライト表示
set hlsearch
" ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>

