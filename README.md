agbuf
===

Most ag plugins use the quickfix list for results. That can [interact awkwardly with splits](http://vimcasts.org/blog/2013/01/oil-and-vinegar-split-windows-and-project-drawer/), so this one uses a new buffer.

Run with:
```
:Ag foo
```

Or a shortcut
```
<leader>a
```

Or use the word under the cursor
```
<leader>g
```

If you don't want to use ag,
```
let g:ag_prg="not_ag"
```
