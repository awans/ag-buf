command! -nargs=* -complete=file Ag call ag-buf#Ag(<q-args>)
nmap <leader>a :Ag<Space>
nmap <leader>g :Ag <c-r>=expand("<cword>")<cr><Cr>
