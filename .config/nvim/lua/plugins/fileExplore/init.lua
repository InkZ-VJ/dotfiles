local file = {
	{
		"stevearc/oil.nvim",
		config = function()
			require("plugins.fileExplore.oil")
		end,
		enabled = true
	},
    {
          "refractalize/oil-git-status.nvim",
          dependencies = {
            "stevearc/oil.nvim",
          },
          config = true,
    },
	{
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function() require"plugins.fileExplore.harpoon" end
	}
}
return file
