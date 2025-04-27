local formatter = {
	{
		"stevearc/conform.nvim",
		event = { "BufWritePre" },
		cmd = { "ConformInfo" },
		opts = {
			notify_on_error = false,
			format_on_save = function(bufnr)
				local disable_filetypes = { c = true, cpp = true }
				local lsp_format_opt
				if disable_filetypes[vim.bo[bufnr].filetype] then
					lsp_format_opt = "never"
				else
					lsp_format_opt = "fallback"
				end
				return {
					timeout_ms = 500,
					lsp_format = lsp_format_opt,
				}
			end,
			formatters_by_ft = {
				sh = { "shfmt" },
				lua = { "stylua" },
				sql = { "pg_format" },
				go = { "goimports", "gofumpt" },
				typescript = { "prettierd" },
				typescriptreact = { "prettierd" },
				javascript = { "prettierd" },
				javascriptreact = { "prettierd" },
				json = { "prettierd" },
				yaml = { "yamlfmt" },
				html = { "prettierd" },
				css = { "prettierd" },
				scss = { "prettierd" },
				markdown = { "prettierd" },
				proto = { "buf" },
			},
		},
	},
}

return formatter
