let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_winsize = 20
let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+,\(^\|\s\s\)ntuser\.\S\+'

augroup ProjectDrawer
"   open netrw file explorer when vim is opened with no argument
  autocmd!
  autocmd VimEnter * if argc() == 0 | :Vexplore | else | endif
"   change root of netrw tree
  autocmd filetype netrw map <silent> <S-k> :execute "Ntree ".expand("<cfile>")<CR>
augroup END
autocmd FileType netrw setl bufhidden=delete
