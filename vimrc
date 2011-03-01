"Syntax highlighting on
syntax on

"Spelling on
"setlocal spell spelllang=en_gb


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
set incsearch
set ignorecase

"Don't create annoying backup file
set nobackup

"Some home made fun
map <F3> :call PyToggleBool()<CR>
" map <silent> <F2> :call Co(&ft)<CR>
map <F2> :TComment<CR>
map <F4> :NERDTreeToggle<CR>
map <F6> :!/usr/local/bin/ctags -R --python-kinds=+p --fields=+iaS --extra=+q .<CR>

let Tlist_Ctags_Cmd="/usr/local/bin/ctags"

"NERDTree madness
let NERDTreeIgnore = ['\.swp$', '\.pyc$']
let NERDChristmasTree = 1

"Enable omni complete functionality
"autocmd FileType python set omnifunc=pythoncomplete#Complete

let processing_doc_path="/Applications/Processing/Contents/Resources/Java/reference"


:ab pysc import pylab as *
\<CR>import os
\<CR>import re
\<CR>
\<CR>INFILE = r''
\<CR>OUTFILE = r''
\<CR>DIR = r''
\<CR>FILESTEM = r''
\<CR>DELIMITER = '\t'
\<CR>SKIPROWS = 1
\<CR>X_COL = 0
\<CR>Y_COL = 3
\<CR>
\<CR>for filename in os.listdir(DIR):
\<CR>        # Identify the right files
\<CR>        result = re.match(filename, FILESTEM)
\<CR>        if result:
\<CR>            filepath = os.path.join(DIR, filename)
\<CR>            data = np.loadtxt(filepath, delimiter=DELIMITER, skiprows=SKIPROWS)
\<CR>        # Plot the output
\<CR>        figure()
\<CR>        scatter(data[X_COL,:], data[Y_COL,:])
\<CR>        
\<CR>np.savetxt(OUTFILE, data, delimiter=DELIMITER, skiprows=SKIPROWS)
\<CR>show()
