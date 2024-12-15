local status = {
    {
        'echasnovski/mini.nvim',
        version = '*',
        config = function()
            require('mini.statusline').setup {
                use_icons = true,
            }
            require('mini.indentscope').setup {
                symbol = '│',
            }
        end
    },
}

return status
