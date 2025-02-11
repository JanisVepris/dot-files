return {
    {
        "folke/trouble.nvim",
        opts = {},
        cmd = "Trouble",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        keys = {
            { "<leader>x", "<cmd>Trouble diagnostics toggle<cr>", mode = "n" },
        },
        config = function()
            local trouble = require("trouble");

            trouble.setup({
                auto_open = false,
                auto_close = true,
                cycle_results = true,
                focus = true,
                max_items = 50,
                warn_no_results = false,
                open_no_results = true,
            });
        end,
    }
}
