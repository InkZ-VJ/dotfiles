vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
	pattern = "*.env.*",
	callback = function()
		vim.bo.filetype = "env"
	end,
})
