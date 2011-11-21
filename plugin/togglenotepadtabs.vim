:function ToggleNotepadTabs()
    :if !exists("b:NotepadTabs")
        :let b:NotepadTabs = 0
    :endif
    :if b:NotepadTabs == 0
        :set tabstop=8
        :set shiftwidth=8
        :set softtabstop=8
        :set noexpandtab
        :set nowrap
        :let b:NotepadTabs=1
        :echo "Using Notepad style tabs"
    :else
        :set tabstop=4
        :set shiftwidth=4
        :set softtabstop=4
        :set expandtab
        :let b:NotepadTabs=0
        :set wrap
        :echo "Using Java style tabs"
    :endif
:endfunction
 
