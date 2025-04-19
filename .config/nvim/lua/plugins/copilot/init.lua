local copilot = {
	{
		"github/copilot.vim",
		enabled = false,
	},
	{
		"zbirenbaum/copilot.lua",
		cmd = "Copilot",
		event = "InsertEnter",
		enabled = true,
		config = function()
			require("copilot").setup({
				suggestion = { enabled = false },
				panel = { enabled = false },
			})
		end,
	},
	{
		"zbirenbaum/copilot-cmp",
		enabled = true,
		config = function()
			require("copilot_cmp").setup()
		end,
	},
}

return copilot
