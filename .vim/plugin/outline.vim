function! OutlineToggle()
    if( !exists( "b:outlineMode" ) )
        let b:outlineMode = 0
    endif

    if( b:outlineMode == 0 )
        set foldmarker={,}
        set foldcolumn=4

        let b:outlineMode = 1
    else
        set foldmarker={{{,}}}
        set foldcolumn=1

        let b:outlineMode = 0
    endif
endfunction
