syntax case ignore

syntax match AgOut /[^:]*/
            \ nextgroup=AgSeparator1
syntax match AgSeparator1 /:/ contained
            \ nextgroup=AgLineNr
syntax match AgLineNr /\d*/ contained
            \ nextgroup=AgSeparator2
syntax match AgSeparator2 /:/ contained
            \ nextgroup=AgPattern
syntax match AgPattern /.*/ contained



highlight AgOut           ctermfg=33          guifg=#00ff00
highlight AgSeparator1    ctermfg=red         guifg=#ff0000
highlight AgSeparator2    ctermfg=red         guifg=#ff0000
highlight AgLineNr        ctermfg=yellow      guifg=#ffff00
highlight link AgPattern  Normal

