augroup Markdown
   autocmd!
   autocmd BufNewFile,BufRead *.md,*markdown silent! set filetype=markdown
   autocmd BufReadPost,BufWritePost,BufNewFile,BufRead *.md,*.markdown if line('$') == 1 && getline(1) == '' | call InsTxtFromFile($HOME.'/.vim/templates/markdown/mdtemplate.md', -1)
   autocmd FileType markdown call SetIndentMarks()
augroup END
