set cc=80
set bg=dark
set number
set tags=./.tags;/
set hlsearch
set term=xterm-256color
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
if filereadable(expand("$HOME/.vim/autoload/pathogen.vim"))
  silent! call pathogen#infect()
endif
 
syntax on
filetype plugin indent on
 
set timeoutlen=450  " Time to wait after ESC (default causes an annoying delay)
set ts=4
set sw=4
set sts=4
set expandtab
 
" Don't use Ex mode, use Q for formatting
map Q gq
let maplocalleader = "," 
 
""""" Settings for NERDTree
let NERDTreeIgnore=['\~$', '^\.git', '\.swp$', '\.DS_Store$']
let NERDTreeShowHidden=1
nmap <LocalLeader>n :NERDTreeFind<cr>
nmap <LocalLeader>m :NERDTreeToggle<cr>
 
" ---------------------------------------------------------------------------
""""" Settings for taglist.vim
let Tlist_Use_Right_Window=1
let Tlist_Auto_Open=0
let Tlist_Enable_Fold_Column=0
let Tlist_Compact_Format=0
let Tlist_WinWidth=28
let Tlist_Exit_OnlyWindow=1
let Tlist_File_Fold_Auto_Close = 1
nmap <LocalLeader>tt :Tlist<cr>
fun! MatchCaseTag()
  let ic = &ic
  set noic
  try
    exe 'tjump ' . expand('<cword>')
  finally
    let &ic = ic
  endtry
endfun
nnoremap <silent> :call MatchCaseTag()<CR>
map <f12> :!ctags -R .<cr>

"window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"khuno settings
let g:khuno_builtins="_,apply"
let g:khuno_max_line_length=999
nnoremap <silent><Leader>x <Esc>:Khuno show<CR>
