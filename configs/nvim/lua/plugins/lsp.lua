return {
	{
		"VonHeikemen/lsp-zero.nvim",
		branch = "v4.x",
		dependencies = {
			-- LSP Support
			"neovim/nvim-lspconfig",
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
			-- Autocompletion
			"hrsh7th/nvim-cmp",
			"hrsh7th/cmp-nvim-lsp",
			"L3MON4D3/LuaSnip",
		},
		config = function()
			local lsp = require("lsp-zero")
			local lspconfig = require("lspconfig")

			lsp.extend_lspconfig({
				sign_text = true,
				lsp_attach = function(_, bufnr)
					lsp.default_keymaps({ buffer = bufnr })
				end,
				capabilities = require("cmp_nvim_lsp").default_capabilities(),
			})

			lsp.format_on_save({
				format_opts = {
					async = false,
					timeout_ms = 10000,
				},
			})

			require("mason").setup({})
			require("mason-lspconfig").setup({
				ensure_installed = {
					"vtsls", -- Typescript
					"eslint",
					"lua_ls",
					"gopls",
					"templ",
					"html",
					"tailwindcss",
					"cssls",
				},
				handlers = {
					function(server_name)
						if server_name == "tsserver" then
							server_name = "ts_ls"
						else
							require("lspconfig")[server_name].setup({})
						end
					end,
				},
			})

			lspconfig.lua_ls.setup(lsp.nvim_lua_ls())
			lspconfig.phpactor.setup({})
			lspconfig.gopls.setup({})
			lspconfig.html.setup({
				filetypes = { "html", "templ" },
			})
			lspconfig.ts_ls.setup({
				enabled = false,
				settings = {
					implicitProjectConfig = true,
				},
			})
			lspconfig.vtsls.setup({})

			local cmp = require("cmp")
			local cmp_format = require("lsp-zero").cmp_format({ details = true })

			local cmp_mapping = {
				["<Tab>"] = cmp.mapping(function(fallback)
					-- This little snippet will confirm with tab, and if no entry is selected, will confirm the first item
					if cmp.visible() then
						local entry = cmp.get_selected_entry()
						if not entry then
							cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
						else
							cmp.confirm()
						end
					else
						fallback()
					end
				end, { "i", "s", "c" }),
			}

			cmp.setup({
				sources = {
					{ name = "nvim_lsp" },
					{ name = "luasnip" },
				},
				formatting = cmp_format,
				mapping = cmp.mapping.preset.insert(cmp_mapping),
			})
		end,
	},
}
