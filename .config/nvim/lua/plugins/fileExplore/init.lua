local file = {
    {
        'nvim-tree/nvim-tree.lua',
        dependencies = {
            'nvim-tree/nvim-web-devicons',
        },
        config = function()
            require("plugins.fileExplore.config.nvim-tree")
        end,
        enabled = true,
    },
    {
        'stevearc/oil.nvim',
        config = function()
            require("plugins.fileExplore.config.oil")
        end,
        enabled = true,
    },
}

return file
