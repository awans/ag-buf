" stolen from https://gist.github.com/hanjingfei/52378c7b9cfb62b02b0ab15d701bb04d
function! agbuf#GotoFileWithLineNum()
    " filename under the cursor
    let file_name = expand('<cfile>')
    if !strlen(file_name)
        echo 'no file under cursor'
        return
    endif
    " look for a line number separated by a :
    if search('\%#\f*:\zs[0-9]\+')
        " change the 'iskeyword' option temporarily to pick up just numbers
        let temp = &iskeyword
        set iskeyword=48-57
        let line_number = expand('<cword>')
        exe 'set iskeyword=' . temp
    endif
    " edit the file
    exe 'e '.file_name
    " if there is a line number, go to it
    if exists('line_number')
        exe line_number
    endif
endfunction

function! agbuf#Ag(args)
  let cmd = "ag " . a:args
  echo "running: " . cmd
  enew
  setlocal buftype=nofile noswapfile
  setlocal cursorline
  execute "silent 0read !" . cmd
  execute "silent file " . cmd
  nnoremap <buffer> <cr> ^:call agbuf#GotoFileWithLineNum()<cr>
  setlocal nomodifiable
  setlocal syntax=agbuf
endfunction

