"#####表示設定#####
set number "行番号を表示する
set title "編集中のファイル名を表示
set showmatch "括弧入力時の対応する括弧を表示
syntax on "コードの色分け
set tabstop=4 "インデントをスペース4つ分に設定
set smartindent "オートインデント

""#####検索設定#####
set ignorecase "大文字/小文字の区別なく検索する
set smartcase "検索文字列に大文字が含まれている場合は区別して検索する
set wrapscan "検索時に最後まで行ったら最初に戻る
""""""""""""""""""""""""""""""
" プラグインのセットアップ
"""""""""""""""""""""""""""""
 if has('vim_starting')
   set nocompatible               " Be iMproved

     " Required:
       set runtimepath+=~/.vim/bundle/neobundle.vim/
       endif

       " Required:
       call neobundle#begin(expand('~/.vim/bundle/'))

       " Let NeoBundle manage NeoBundle
       " Required:
       NeoBundleFetch 'Shougo/neobundle.vim'

       " ファイルオープンを便利に
       NeoBundle 'Shougo/unite.vim'
       " Unite.vimで最近使ったファイルを表示できるようにする
       NeoBundle 'Shougo/neomru.vim'
       " ...省略
	   " python
       NeoBundle 'davidhalter/jedi-vim'

	   NeoBundle 'Shougo/neocomplete.vim'
       
	   call neobundle#end()

       " Required:
       filetype plugin indent on

       " If there are uninstalled bundles found on startup,
       " this will conveniently prompt you to install them.
       NeoBundleCheck
       """"""""""""""""""""""""""""""
	   autocmd FileType python setlocal omnifunc=jedi#completions

	   let g:jedi#auto_vim_configuration = 0

	   if !exists('g:neocomplete#force_omni_input_patterns')
			           let g:neocomplete#force_omni_input_patterns = {}
			   endif

			   let g:neocomplete#force_omni_input_patterns.python = '\h\w*\|[^. \t]\.\w*'

