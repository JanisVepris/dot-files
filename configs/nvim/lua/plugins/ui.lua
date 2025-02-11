return {
    { 'nvim-tree/nvim-web-devicons' },
    { 'romgrk/barbar.nvim', opts = { animation = false }},

    { 'nvim-lualine/lualine.nvim',
        dependencies = {
            'nvim-tree/nvim-web-devicons',
        },
        opts = {
            options = {
                theme = 'catppuccin'
            },
            sections = {
                lualine_a = {'mode', 'modified'},
                lualine_b = {},
                lualine_c = {},
                lualine_x = {},
                lualine_y = {'diagnostics'},
                lualine_z = {'location'},
            }
        }
    },
}
