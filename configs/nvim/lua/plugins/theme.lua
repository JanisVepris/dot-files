function ColorMyPencils()
    -- transparent background
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

    vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" })
    vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "none" })
    vim.api.nvim_set_hl(0, "TelescopePromptTitle", { bg = "none" })
    vim.api.nvim_set_hl(0, "TelescopePromptBorder", { bg = "none" })
    vim.api.nvim_set_hl(0, "TelescopePreviewTitle", { bg = "none" })
    vim.api.nvim_set_hl(0, "TelescopeResultsTitle", { bg = "none" })
end

return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        lazy = false,
        priority = 1000,
        opts = {
            flavour = "auto", -- latte, frappe, macchiato, mocha
            background = { -- :h background
                light = "latte",
                dark = "frappe",
            },
            transparent_background = true, -- disables setting the background color.
            float = {
                transparent = true,
                solid = false,
            },
            show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
            term_colors = true, -- sets terminal colors (e.g. `g:terminal_color_0`)
            dim_inactive = {
                enabled = false, -- dims the background color of inactive window
            },
            styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
                comments = { "italic" }, -- Change the style of comments
                conditionals = { "italic" },
                keywords = { "bold" },
                strings = { "italic" },
            },
            integrations = {
                cmp = true,
                barbar = true,
                treesitter = true,
                neogit = true,
                telescope = { enabled = true },
                fidget = true,
                mason = true,
                illuminate = true,
                harpoon = true,
                dap = true,
                dap_ui = true,
            },
        },
        config = function(_, opts)
            require("catppuccin").setup(opts)
            vim.cmd.colorscheme("catppuccin")
            ColorMyPencils()
        end,
    },
    -- {
    --     "neanias/everforest-nvim",
    --     lazy = false,
    --     priority = 1000,
    --     config = function()
    --         require("everforest").setup({
    --             italics = true,
    --             disable_italic_comments = false,
    --             ui_contrast = "high", -- low, high
    --             -- dim_inactive_windows = true,
    --         })
    --         vim.g.everforest_enable_italic = true
    --         vim.cmd.colorscheme("everforest")
    --     end,
    -- },
}
