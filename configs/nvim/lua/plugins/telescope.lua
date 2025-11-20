local builtin = require("telescope.builtin")
return {
    {
        "nvim-telescope/telescope.nvim",
        tag = "v0.1.9",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-telescope/telescope-ui-select.nvim",
            "nvim-telescope/telescope-file-browser.nvim",
        },
        opts = {
            defaults = {
                sorting_strategy = "ascending",
                layout_config = {
                    horizontal = {
                        prompt_position = "top",
                        width = 0.9,
                        preview_width = 0.5,
                    },
                },
            },
            pickers = {
                find_files = {
                    find_command = { "rg", "--files", "--hidden", "-g", "!.git" },
                },
            },
            extensions = {
                ["ui-select"] = {
                    require("telescope.themes").get_dropdown({
                        -- even more opts
                    }),
                },
                ["file_browser"] = {
                    hijack_netrw = false,
                    grouped = true,
                    git_status = false,
                    display_stat = { date = true, size = true },
                },
            },
        },
        config = function(_, opts)
            require("telescope").setup(opts)
            require("telescope").load_extension("ui-select")
            require("telescope").load_extension("file_browser")
        end,
        keys = {
            { "<leader>pv", ":Telescope file_browser path=%:p:h select_buffer=true<CR>" },
            { "<leader>pf", builtin.find_files },
            { "<leader>pg", builtin.live_grep },
            { "<leader>ph", builtin.help_tags },
            { "<leader>pb", builtin.buffers },
            { "<leader>ps", builtin.lsp_document_symbols },
            { "<C-p>", builtin.git_files },
            { "<leader>gd", builtin.lsp_definitions },
            -- {
            --     "<leader>ps",
            --     function()
            --         builtin.grep_string({ search = vim.fn.input("Grep > ") })
            --     end,
            -- },
        },
    },
}
