command! -nargs=* -complete=file Ag call ag-buf#AgIt(<q-args>)
nmap <leader>a :Ag<space>
nmap <leader>g :Ag <c-r>=expand("<cword>")<cr><cr>
