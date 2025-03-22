local theme = {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			require("plugins.theme.config.catppuccin")
		end,
	},
	{
		"rose-pine/neovim",
		priority = 999,
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
	{
		"tiagovla/tokyodark.nvim",
		enabled = false,
		opts = {
			transparent_background = true, -- set background to transparent
			gamma = 1.00, -- adjust the brightness of the theme
			styles = {
				comments = { italic = true }, -- style for comments
				keywords = { italic = true }, -- style for keywords
				identifiers = { italic = true }, -- style for identifiers
				functions = {}, -- style for functions
				variables = {}, -- style for variables
			},
			custom_highlights = {} or function(highlights, palette)
				return {}
			end, -- extend highlights
			custom_palette = {} or function(palette)
				return {}
			end, -- extend palette
			terminal_colors = true, -- enable terminal colors-- custom options here
		},
		config = function(_, opts)
			require("tokyodark").setup(opts) -- calling setup is optional
		end,
	},
}

return theme
