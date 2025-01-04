local debug = {
    {
        "mfussenegger/nvim-dap",
        dependencies = {
            "leoluz/nvim-dap-go",
            "rcarriga/nvim-dap-ui",
            "theHamsta/nvim-dap-virtual-text",
            "nvim-neotest/nvim-nio",
        },
        config = function()
            require("dapui").setup()
            require("dap-go").setup()
            require("nvim-dap-virtual-text").setup {}
        end,
    }
}

return debug
