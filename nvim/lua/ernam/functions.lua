-- centers the current pane as the middle 2 of 4 imaginary columns
-- should be called in a window with a single pane

vim.cmd([[
    function! CenterPane()
        lefta vnew
        wincmd w
        exec 'vertical resize '. string(&columns * 0.75)
    endfunction
]])

