local parsers = {
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
}

-- highlight + indent for one buffer; markdown keeps vim regex highlighting on top
local function attach(buf, lang)
    if not vim.api.nvim_buf_is_valid(buf) or not pcall(vim.treesitter.start, buf, lang) then
        return
    end
    vim.bo[buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
    if lang == "markdown" then
        vim.bo[buf].syntax = "on"
    end
end

return {
    {
        "nvim-treesitter/nvim-treesitter",
        branch = "main",
        lazy = false,
        build = ":TSUpdate",
        config = function()
            local ts = require("nvim-treesitter")
            ts.install(parsers)

            vim.api.nvim_create_autocmd("FileType", {
                callback = function(args)
                    local lang = vim.treesitter.language.get_lang(args.match)
                    if not lang then
                        return
                    end

                    if vim.tbl_contains(ts.get_installed(), lang) then
                        attach(args.buf, lang)
                    elseif vim.tbl_contains(ts.get_available(), lang) then
                        -- auto install missing parsers, then attach
                        ts.install(lang):await(function(err)
                            if not err then
                                vim.schedule(function()
                                    attach(args.buf, lang)
                                end)
                            end
                        end)
                    end
                end,
            })
        end,
    },
    {
        "nvim-treesitter/nvim-treesitter-textobjects",
        branch = "main",
        lazy = false,
        config = function()
            require("nvim-treesitter-textobjects").setup({
                select = {
                    lookahead = true,
                    selection_modes = {
                        ["@parameter.outer"] = "v", -- charwise
                        ["@function.outer"] = "V", -- linewise
                        ["@class.outer"] = "<c-v>", -- blockwise
                    },
                },
            })

            local select = require("nvim-treesitter-textobjects.select")
            local objects = {
                af = { "@function.outer", "textobjects" },
                ["if"] = { "@function.inner", "textobjects" },
                as = { "@local.scope", "locals" },
            }
            for key, obj in pairs(objects) do
                vim.keymap.set({ "x", "o" }, key, function()
                    select.select_textobject(obj[1], obj[2])
                end)
            end
        end,
    },
}
