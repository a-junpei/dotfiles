"----------------------------------------
" ユーザーランタイムパス設定
"----------------------------------------
" Windows, unixでのruntimepathの違いを吸収するためのもの。
" $MY_VIMRUNTIMEはユーザーランタイムディレクトリを示す。
" :echo $MY_VIMRUNTIMEで実際のパスを確認できます。
if isdirectory($HOME . '/.vim')
  let $MY_VIMRUNTIME = $HOME.'/.vim'
elseif isdirectory($HOME . '\vimfiles')
  let $MY_VIMRUNTIME = $HOME.'\vimfiles'
elseif isdirectory($VIM . '\vimfiles')
  let $MY_VIMRUNTIME = $VIM.'\vimfiles'
endif

set nocompatible 
filetype off

set rtp+=$MY_VIMRUNTIME/neobundle.vim

if has('vim_starting')
  set runtimepath+=$MY_VIMRUNTIME/neobundle.vim
  call neobundle#rc(expand($MY_VIMRUNTIME . '/bundle/'))
endif

NeoBundle 'Shougo/neocomplcache'

filetype plugin indent on

set number

let g:neocomplcache_enable_at_startup = 1
