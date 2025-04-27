require("tokyonight").setup({
	style = "moon",
	transparent = true,
	lualine_bold = true,
	cache = true,
	styles = {
		comments = { italic = true },
		keywords = { italic = true },
		functions = {},
		variables = {},
		sidebars = "moon",
		floats = "moon",
	},
	plugins = {
		auto = true,
		telescope = true,
		blink = true,
		flash = true,
		indentmini = true,
		lazy = true,
		snack = true,
	},

	on_highlights = function(highlights, colors)
		highlights.LineNrBelow = {
			fg = "#B3C8CF",
		}
		highlights.LineNrAbove = {
			fg = "#B3C8CF",
		}
		highlights.WinSeparator = {
			fg = "#ff966c",
		}
		highlights.SnacksPicker = {
			bg = "none",
			nocombine = true,
		}
	end,
})
