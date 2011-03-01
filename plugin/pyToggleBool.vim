:function PyToggleBool()
    :normal $bce
    :if @" == 'True'
        :execute "normal aFalse\<Esc>"
    :elseif @" == 'False'
        :execute "normal aTrue\<Esc>"
    :endif
:endfunction

