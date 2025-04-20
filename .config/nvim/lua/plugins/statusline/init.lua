return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	enabled = true,
	config = function()
		require("plugins.statusline.status")
	end,
}
