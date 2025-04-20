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
})

vim.api.nvim_create_autocmd("ColorScheme", {
	pattern = "*",
	callback = function()
		vim.api.nvim_set_hl(0, "SnacksPicker", { bg = "none", nocombine = true })
	end,
})
