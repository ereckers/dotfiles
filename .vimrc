""
"" Ed Reckers Setup
""

" Syntax highlighting
:syntax on

"" Text, tabs, and indent
"" http://vim.wikia.com/wiki/Indenting_source_code

" Indentation without tabs
" set expandtab

" Shiftwidth to 4 spaces (my default)
set shiftwidth=4

" Tab to 4 spaces (my default)
set tabstop=4

" Only do this part when compiled with support for autocommands
if has("autocmd")
  " Enable file type detection
  filetype on

  " Customisations based on house-style (arbitrary)
  autocmd FileType html setlocal ts=4 sts=4 sw=4 expandtab
  autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType scss setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType javascript setlocal ts=4 sts=4 sw=4 noexpandtab

  " Treat .rss files as XML
  autocmd BufNewFile,BufRead *.rss setfiletype xml
endif

" Auto indent
set ai

" Smart indent
set si

" File type based indentation for all file types
" I use it to gg=G html tidy in PHP files
" http://vim.wikia.com/wiki/How_to_stop_auto_indenting
filetype indent on

" Auto-indenting for code paste
" http://vim.wikia.com/wiki/VimTip906
set pastetoggle=<F2>
