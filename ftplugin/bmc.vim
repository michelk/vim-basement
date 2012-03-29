function! Qlat2bmc()
    let pos = line('.')
    +1
    . yank n
    let branch_pos = search('branch', 'b')
    +1
    . yank c
    put c
    put n
    exe pos
endfunction
