return {
    {
        "nvim-treesitter/nvim-treesitter",
        dependencies = {
            "nvim-treesitter/nvim-treesitter-textobjects",
        },
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter.configs").setup({
                ensure_installed = {
                    "bash",
                    "css",
                    "diff",
                    "dockerfile",
                    "git_config",
                    "git_rebase",
                    "gitattributes",
                    "gitcommit",
                    "gitignore",
                    "graphql",
                    "go",
                    "html",
                    "ini",
                    "javascript",
                    "json",
                    "json5",
                    "lua",
                    "luadoc",
                    "markdown",
                    "markdown_inline",
                    "php",
                    "phpdoc",
                    "python",
                    "scss",
                    "sql",
                    "typescript",
                    "vim",
                    "vimdoc",
                    "vue",
                    "yaml",
                },

                sync_install = false,

                auto_install = true,

                indent = {
                    enable = true,
                },

                highlight = {
                    enable = true,
                    additional_vim_regex_highlighting = { "markdown" },
                },

                textobjects = {
                    select = {
                        enable = true,
                        lookahead = true,
                        keymaps = {
                            ["af"] = "@function.outer",
                            ["if"] = "@function.inner",
                            ["as"] = { query = "@local.scope", query_group = "locals", desc = "Select language scope" },
                            ["is"] = {
                                query = "@local.scope.inner",
                                query_group = "locals",
                                desc = "Select language scope",
                            },
                        },
                        selection_modes = {
                            ["@parameter.outer"] = "v", -- charwise
                            ["@function.outer"] = "V", -- linewise
                            ["@class.outer"] = "<c-v>", -- blockwise
                        },
                    },
                },
            })
        end,
    },
}
