compiler scalac

"コンパイル
map <F5> <ESC>:w<CR>:cd %:h<CR>:make -sourcepath . %:p<CR>:cd -<CR>
map! <F5> <ESC>:w<CR>:cd %:h<CR>:make -sourcepath . %:p<CR>:cd -<CR>

"実行
map <F6> <ESC>:w<CR>:cd %:h<CR>:!scala %:r<CR>:cd -<CR>
map! <F6> <ESC>:w<CR>:cd %:h<CR>:!scala %:r<CR>:cd -<CR>

"コンパイル+実行
map <F7> <ESC>:w<CR>:cd %:h<CR>:make -sourcepath . %:p<CR>:!scala %:r<CR>:cd -<CR>
map! <F7> <ESC>:w<CR>:cd %:h<CR>:make -sourcepath . %:p<CR>:!scala %:r<CR>:cd -<CR>
