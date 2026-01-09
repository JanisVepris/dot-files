return {
    { "nvim-tree/nvim-web-devicons" },
    { "lewis6991/gitsigns.nvim" }, -- Git signs in buffers
    {
        "nvim-lualine/lualine.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        opts = {
            sections = {
                lualine_a = { "mode", "modified" },
                lualine_b = {},
                lualine_c = {},
                lualine_x = {},
                lualine_y = { "diagnostics" },
                lualine_z = { "location" },
            },
            tabline = {
                lualine_a = {
                    {
                        "buffers",
                        use_mode_colors = true,
                        filetype_names = {
                            alpha = "Home",
                        },
                    },
                },
                lualine_b = {},
                lualine_c = {},
                lualine_x = {},
                lualine_y = {},
                lualine_z = {},
            },
        },
        config = function(_, opts)
            local custom_theme = require("lualine.themes.everforest")

            custom_theme.normal.c.bg = "#2B353C"
            custom_theme.insert.c.bg = "#2B353C"
            custom_theme.visual.c.bg = "#2B353C"

            opts.options = {
                section_separators = { left = "", right = "" },
                component_separators = { left = "", right = "" },
                -- section_separators = { left = "", right = "" },
                -- component_separators = { left = "", right = "" },
                theme = custom_theme,
            }
            require("lualine").setup(opts)
        end,
    },
}
