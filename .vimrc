set tabstop=2
set expandtab
colorscheme murphy
set nocompatible
nnoremap <C-h> :tabprevious<CR>
nnoremap <C-l> :tabnext<CR>
"set undodir=~/.vim/undodir
"set undofile
" Enables filetype detection, loads ftplugin, and loads indent
" (Not necessary on nvim and may not be necessary on vim 8.2+)
"filetype plugin indent on

" vim vanilla
"syntax enable
"filetype plugin on

" finding files
"search into subfolder, provides tab completion for file related tasks
set path+=**
" display matching files when tabcomplete
set wildmenu


" TAG jumping
" Create tags file
command! MakeTags !ctags -R .
