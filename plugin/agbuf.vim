command! -nargs=* -complete=file Ag call agbuf#Ag(<q-args>)
nmap <leader>a :Ag<space>
nmap <leader>g :Ag <c-r>=expand("<cword>")<cr><cr>
