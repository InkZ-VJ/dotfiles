-- [[ Configure nvim-cmp ]]
-- See `:help cmp`
local cmp = require("cmp")
local luasnip = require("luasnip")
require("luasnip.loaders.from_vscode").lazy_load()

luasnip.config.setup({})
local s = luasnip.snippet
local t = luasnip.text_node
local i = luasnip.insert_node

luasnip.add_snippets("go", {
	s("jfmt", {
		-- Variable name (first focus point)
		t("jsonData, _ := json.MarshalIndent("),
		i(1, "data"), -- Second focus point
		t(', "", "\t")'),
		t({ "", "fmt.Println(string(jsonData))" }),
	}),
})

local lspkind = require("lspkind")
cmp.setup({
	snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body)
		end,
	},
	completion = {
		completeopt = "menu,menuone,noinsert",
	},
	mapping = cmp.mapping.preset.insert({
		["<C-n>"] = cmp.mapping.select_next_item(),
		["<C-p>"] = cmp.mapping.select_prev_item(),
		["<C-d>"] = cmp.mapping.scroll_docs(-4),
		["<C-f>"] = cmp.mapping.scroll_docs(4),
		["<C-k>"] = vim.lsp.buf.hover(),
		["<C-Space>"] = cmp.mapping.complete({}),
		["<CR>"] = cmp.mapping.confirm({
			behavior = cmp.ConfirmBehavior.Replace,
			select = true,
		}),
		["<Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			elseif luasnip.expand_or_locally_jumpable() then
				luasnip.expand_or_jump()
			else
				fallback()
			end
		end, { "i", "s" }),
		["<S-Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_prev_item()
			elseif luasnip.locally_jumpable(-1) then
				luasnip.jump(-1)
			else
				fallback()
			end
		end, { "i", "s" }),
	}),
	sources = {
		--     -- Copilot Source
		{ name = "copilot", group_index = 2 },
		--     -- Other Sources
		{ name = "nvim_lsp", group_index = 2 },
		{ name = "path", group_index = 2 },
		{ name = "luasnip", group_index = 2 },
	},
	formatting = {
		expandable_indicator = true,
		format = lspkind.cmp_format({
			mode = "symbol",
			max_width = 50,
			symbol_map = {
				Copilot = "(copilot)",
				Text = "󰉿(text)",
				Method = "󰆧(method)",
				Function = "󰊕(func)",
				Constructor = "(constructor)",
				Field = "󰜢(field)",
				Variable = "󰀫(variable)",
				Class = "󰠱(class)",
				Interface = "(interface)",
				Module = "(module)",
				Property = "󰜢(property)",
				Unit = "󰑭(unit)",
				Value = "󰎠(value)",
				Enum = "(Enum)",
				Keyword = "󰌋(keyword)",
				Snippet = "(snippet)",
				Color = "󰏘(color)",
				File = "󰈙(file)",
				Reference = "󰈇(ref)",
				Folder = "󰉋(folder)",
				EnumMember = "(enumMember)",
				Constant = "󰏿(constant)",
				Struct = "󰙅(struct)",
				Event = "(event)",
				Operator = "󰆕(operator)",
			},
		}),
	},
})
