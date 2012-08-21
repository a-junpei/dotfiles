"----------------------------------------
" ���[�U�[�����^�C���p�X�ݒ�
"----------------------------------------
" Windows, unix�ł�runtimepath�̈Ⴂ���z�����邽�߂̂��́B
" $MY_VIMRUNTIME�̓��[�U�[�����^�C���f�B���N�g���������B
" :echo $MY_VIMRUNTIME�Ŏ��ۂ̃p�X���m�F�ł��܂��B
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
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimproc'
NeoBundle 'Shougo/vimshell'
NeoBundle 'mru.vim'

filetype plugin indent on

set number

let g:neocomplcache_enable_at_startup = 1

" Windows�����̓V���{���b�N�����N���������Ⴄ�̂Ńo�b�N�A�b�v�Ȃ�
let s:MSWindows = has('win95') + has('win16') + has('win32') + has('win64')
if s:MSWindows
  set nobackup nowritebackup
end