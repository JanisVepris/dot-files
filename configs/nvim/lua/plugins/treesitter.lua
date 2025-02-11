return {
    { 
        "nvim-treesitter/nvim-treesitter", 
        build = ":TSUpdate",
        config = function ()
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
            })
        end
    },
}
