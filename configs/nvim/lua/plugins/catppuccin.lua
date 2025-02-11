return {
    { "catppuccin/nvim", name = "catppuccin", lazy = false, priority = 9998,
        init = function()
            vim.cmd.colorscheme "catppuccin"
        end,
        opts = {
            flavour = "frappe", -- latte, frappe, macchiato, mocha
            background = { -- :h background
                light = "latte",
                dark = "frappe",
            },
            transparent_background = true, -- disables setting the background color.
            show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
            term_colors = true, -- sets terminal colors (e.g. `g:terminal_color_0`)
            dim_inactive = {
                enabled = true, -- dims the background color of inactive window
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
            },
        },
    }
}
