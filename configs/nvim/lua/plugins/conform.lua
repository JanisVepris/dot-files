return { -- powerful formatter plugin
    {
        "stevearc/conform.nvim",
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            local conform = require("conform")

            conform.setup({
                format_on_save = {
                    lsp_fallback = false,
                    async = false,
                    timeout_ms = 1000,
                },
                -- formatters = {
                --     goimports_reviser = {
                --         prepend_args = { "-rm-unused" },
                --     },
                -- },
                formatters_by_ft = {
                    go = { "gofumpt", "goimports" },
                    templ = { "templ" },
                    lua = { "stylua" },
                    javascript = { "biome" },
                    typescript = { "biome" },
                    typescriptreact = { "biome" },
                    javascriptreact = { "biome" },
                    json = { "biome" },
                    html = { "prettier" },
                    css = { "biome" },
                    scss = { "prettier" },
                    markdown = { "prettier" },
                    yaml = { "biome" },
                    vue = { "biome" },
                },
            })
        end,
    },
}
