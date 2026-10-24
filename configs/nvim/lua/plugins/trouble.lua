return { -- a pretty list of diagnostics
    {
        "folke/trouble.nvim",
        opts = {
            auto_open = false,
            auto_close = true,
            focus = true,
            max_items = 50,
            warn_no_results = false,
            open_no_results = true,
        },
        cmd = "Trouble",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        keys = {
            { "<leader>x", "<cmd>Trouble diagnostics toggle<cr>", mode = "n" },
        },
    },
}
