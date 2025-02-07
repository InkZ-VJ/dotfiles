local file = {
	{
		"nvim-tree/nvim-tree.lua",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("plugins.fileExplore.config.nvim-tree")
		end,
		enabled = false,
	},
	{
		"stevearc/oil.nvim",
		config = function()
			require("plugins.fileExplore.config.oil")
		end,
		enabled = true,
	},
	{
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("setting.harpoon")
		end,
	},
}

return file
