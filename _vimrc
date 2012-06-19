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

set rtp+=$MY_VIMRUNTIME/vundle.git
call vundle#rc($MY_VIMRUNTIME . '/bundle/')

Bundle 'gmarik/vundle'

Bundle 'scala.vim'

filetype plugin indent on

augroup filetypedetect
    autocmd! BufNewFile,BufRead *.scala setfiletype scala
augroup END
