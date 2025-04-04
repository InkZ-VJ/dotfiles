local theme = {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 999,
		config = function()
			require("plugins.theme.config.catppuccin")
		end,
	},
	{
		"rose-pine/neovim",
		priority = 1000,
		config = function()
			require("plugins.theme.config.rose-pine")
		end,
	},
	{
		"oxfist/night-owl.nvim",
		enabled = false,
		lazy = false, -- make sure we load this during startup if it is your main colorscheme
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			require("plugins.theme.config.night-owl")
		end,
	},
}

return theme
