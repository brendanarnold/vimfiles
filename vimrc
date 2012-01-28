"Syntax highlighting on
syntax on

"Required to get snipMate plugin to work
filetype plugin on

"Lets be YOONICODEE
set encoding=utf-8

"Non vi mode
set nocompatible

"Set tab 4 spaces wide
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab

"Wrap text in comments
set formatoptions=cq
set textwidth=72

"Search as you type and ignore case
"If capitalised in search, is case-sensitive
set incsearch
set ignorecase
set smartcase

"Don't create annoying backup file
set nobackup

"Some F'ing fun
map <F2> :TComment<CR>
map <F3> :setlocal spell! spelllang=en_gb<CR>:setlocal spell?<CR>
map <F4> :NERDTreeToggle<CR>
map <F5> :call ToggleTabStyle()<CR>
map <F6> :!/usr/local/bin/ctags -R --python-kinds=+p --fields=+iaS --extra=+q .<CR>
" map <F7> :call PyToggleBool()<CR>

let Tlist_Ctags_Cmd="/usr/local/bin/ctags"

" NERDTree madness
let NERDTreeIgnore = ['\.swp$', '\.pyc$']
" autocmd VimEnter * NERDTree
let NERDChristmasTree = 1
" Automatically quits NERDTree when last buffer quitted
function! NERDTreeQuit()
  redir => buffersoutput
  silent buffers
  redir END
"                     1BufNo  2Mods.     3File           4LineNo
  let pattern = '^\s*\(\d\+\)\(.....\) "\(.*\)"\s\+line \(\d\+\)$'
  let windowfound = 0
  for bline in split(buffersoutput, "\n")
    let m = matchlist(bline, pattern)
    if (len(m) > 0)
      if (m[2] =~ '..a..')
        let windowfound = 1
      endif
    endif
  endfor
  if (!windowfound)
    quitall
  endif
endfunction
autocmd WinEnter * call NERDTreeQuit()


" easier navigation between lines
nnoremap <Down> gj
nnoremap <Up> gk

" Easier navigation between windows
nnoremap <C-H> <C-W>h
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l

"Enable omni complete functionality
"autocmd FileType python set omnifunc=pythoncomplete#Complete

let processing_doc_path="/Applications/Processing/Contents/Resources/Java/reference"

