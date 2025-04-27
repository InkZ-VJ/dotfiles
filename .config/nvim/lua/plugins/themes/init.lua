local themes = {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 999,
		config = function()
			require("plugins.themes.catppuccin")
		end,
	},
	{
		"rose-pine/neovim",
		priority = 1000,
		config = function()
			require("plugins.themes.rose-pine")
		end,
	},
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("plugins.themes.tokyonight")
		end,
	},
}

return themes
