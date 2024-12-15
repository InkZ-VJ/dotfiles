local theme = {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            vim.cmd.colorscheme 'catppuccin'
        end
    },
    {
        'rose-pine/neovim',
        priority = 999,
    },
}

return theme
