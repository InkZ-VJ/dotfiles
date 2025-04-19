local file = {
	{
		"stevearc/oil.nvim",
		config = function()
			require("plugins.fileExplore.oil")
		end,
		enabled = true,
	},
	{
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("plugins.fileExplore.harpoon")
		end,
	},
}

return file
