vim.keymap.set("n", "<leader>ee", "oif err != nil {<CR>}<ESC>O return err<ESC>")

vim.keymap.set("n", "<leader>ne", "oif err != nil {<CR>}<ESC>O return nil, err<ESC>")

vim.keymap.set("n", "<leader>pp", "<C-^>", { noremap = true, silent = true })

-- vnoremap <Leader>" c"<C-R>""<Esc>

vim.keymap.set("v", '<leader>"', 'c"<C-R>""<Esc>', { noremap = true })
