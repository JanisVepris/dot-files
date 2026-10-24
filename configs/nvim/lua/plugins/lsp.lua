return {
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
        },
        config = function()
            vim.diagnostic.config({
                float = {
                    focusable = false,
                    style = "minimal",
                    border = "rounded",
                    source = true,
                    header = "",
                    prefix = "",
                },
            })

            -- buffer-local keymaps for every LSP client
            vim.api.nvim_create_autocmd("LspAttach", {
                callback = function(args)
                    local telescope = require("telescope.builtin")
                    local opts = { buffer = args.buf }
                    vim.keymap.set("n", "gd", telescope.lsp_definitions, opts)
                    vim.keymap.set("n", "gD", telescope.lsp_type_definitions, opts)
                    vim.keymap.set("n", "gi", telescope.lsp_implementations, opts)
                    vim.keymap.set("n", "gr", telescope.lsp_references, opts)
                    vim.keymap.set("n", "rn", vim.lsp.buf.rename, opts)
                end,
            })

            require("mason").setup()
            require("mason-lspconfig").setup({
                -- stylua is formatted by conform, not as an LSP
                automatic_enable = { exclude = { "stylua" } },
                ensure_installed = {
                    "gopls",
                    "lua_ls",
                    "stylua",
                },
            })

            vim.lsp.config("gopls", {
                settings = {
                    gopls = {
                        gofumpt = true,
                        staticcheck = true,
                        semanticTokens = true,
                        analyses = {
                            ST1000 = false,
                        },
                    },
                },
            })

            vim.lsp.config("lua_ls", {
                settings = {
                    Lua = {
                        diagnostics = {
                            globals = { "vim" },
                        },
                    },
                },
            })
            vim.lsp.enable("gopls")
            vim.lsp.enable("lua_ls")
        end,
    },
    {
        "Saghen/blink.cmp",
        dependencies = {
            "saghen/blink.lib",
        },
        opts = { -- code completion
            fuzzy = { implementation = "lua" },
            keymap = {
                ["<CR>"] = { "accept", "fallback" },
            },
            completion = {
                menu = { border = "rounded" },
                documentation = { auto_show = true, window = { border = "rounded" } },
                ghost_text = { enabled = true },
                list = {
                    selection = {
                        preselect = true,
                        auto_insert = true,
                    },
                },
            },
        },
    },
}
