return {
    { "nvim-tree/nvim-web-devicons" },
    { "lewis6991/gitsigns.nvim" }, -- Git signs in buffers
    { "romgrk/barbar.nvim", opts = { animation = false } },

    {
        "nvim-lualine/lualine.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        opts = {
            options = {
                theme = "catppuccin",
            },
            sections = {
                lualine_a = { "mode", "modified" },
                lualine_b = {},
                lualine_c = {},
                lualine_x = { "diagnostics" },
                lualine_y = {},
                lualine_z = { "location" },
            },
        },
    },
}
