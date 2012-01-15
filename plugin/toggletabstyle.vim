:function ToggleTabStyle()
    :if !exists("b:TabStyle")
        :let b:TabStyle = 0
    :endif
    :if b:TabStyle == 0
        :set tabstop=8
        :set shiftwidth=8
        :set softtabstop=8
        :set noexpandtab
        :set nowrap
        :let b:TabStyle=1
        :echo "Using Notepad style tabs"
    :elseif b:TabStyle == 1
        :set tabstop=4
        :set shiftwidth=4
        :set softtabstop=4
        :set expandtab
        :let b:TabStyle=2
        :set wrap
        :echo "Using Java style tabs"
    :else
        :set tabstop=2
        :set shiftwidth=2
        :set softtabstop=2
        :set expandtab
        :let b:TabStyle=0
        :set wrap
        :echo "Using HTML style tabs"
    :endif
:endfunction
 
