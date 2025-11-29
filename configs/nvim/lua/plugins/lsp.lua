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
                    source = "always",
                    header = "",
                    prefix = "",
                },
            })

            local on_attach = function()
                local telescope = require("telescope.builtin")
                vim.keymap.set("n", "gd", telescope.lsp_definitions)
                vim.keymap.set("n", "gD", telescope.lsp_type_definitions)
                vim.keymap.set("n", "gi", telescope.lsp_implementations)
                vim.keymap.set("n", "gr", telescope.lsp_references)
                vim.keymap.set("n", "rn", vim.lsp.buf.rename)
            end

            require("mason").setup()
            require("mason-lspconfig").setup({
                automatic_installation = true,
                ensure_installed = {
                    "gopls",
                    "lua_ls",
                    "stylua",
                },
            })

            vim.lsp.config("gopls", {
                on_attach = on_attach,
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
