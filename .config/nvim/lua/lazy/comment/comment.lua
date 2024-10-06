local comment = {
    {
        'numToStr/Comment.nvim',
        opts = {
            -- add any options here
        },
        lazy = false,
    },
    {
        "folke/todo-comments.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "folke/trouble.nvim",
        },
        opts = {
            -- configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        }
    }
}

return comment
