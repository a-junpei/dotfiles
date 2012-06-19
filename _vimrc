set nocompatible 
filetype off

let $VUNDLE_GIT = $MY_VIMRUNTIME . 'vundle.git'
set rtp+=$VUNDLE_GIT
"set rtp+=~/vimfiles/vundle.git/
call vundle#rc('~/vimfiles/bundle/')

Bundle 'gmarik/vundle'

Bundle 'scala.vim'

filetype plugin indent on

augroup filetypedetect
    autocmd! BufNewFile,BufRead *.scala setfiletype scala Åií«â¡Åj
augroup END
