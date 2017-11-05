syntax case ignore

syntax match AgFile /[^:]*/
            \ nextgroup=AgSeparator1
syntax match AgSeparator1 /:/ contained
            \ nextgroup=AgLineNr
syntax match AgLineNr /\d*/ contained
            \ nextgroup=AgSeparator2
syntax match AgSeparator2 /:/ contained
            \ nextgroup=AgPattern
syntax match AgPattern /.*/ contained



highlight link AgFile Directory
highlight link AgSeparator1 Normal
highlight link AgSeparator2    Normal
highlight link AgLineNr Directory
highlight link AgPattern  Normal

