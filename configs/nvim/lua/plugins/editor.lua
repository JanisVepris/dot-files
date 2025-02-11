return {
    { 'RRethy/vim-illuminate' }, -- Highlight current word in document
    { 'RaafatTurki/corn.nvim',
        opts = {
          on_toggle = function()
            vim.diagnostic.config({ virtual_text = not vim.diagnostic.config().virtual_text })
          end,
          item_preprocess_func = function(item)
            return item
          end

        },
    },
    { 'lewis6991/gitsigns.nvim' },
    { "kylechui/nvim-surround", version = "*", event = "VeryLazy" },
    { 'numToStr/Comment.nvim', opts = {}, lazy = false },
}
