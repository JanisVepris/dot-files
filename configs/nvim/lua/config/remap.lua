vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local map = vim.keymap.set

map("n", "<leader>pv", vim.cmd.Ex) -- open netwr

map("n", "J", "mzJ`z") -- cursor remains in place when joining line

map("x", "<leader>p", '"_dP') -- paste without loosing the copy buffer

map("n", "gK", vim.diagnostic.open_float) -- show floating diagnostic message

map("n", "K", function()
    vim.lsp.buf.hover({ border = "rounded", focusable = false })
end)

map("n", "<leader>co", ":copen<CR>") -- open quickfix list
map("n", "<leader>cc", ":cclose<CR>") -- close quickfix list
map("n", "<leader>c]", ":cnext<CR>") -- next quickfix item
map("n", "<leader>c[", ":cprev<CR>") -- previous quickfix item
map("n", "<leader>ca", vim.lsp.buf.code_action)

-- buffer navigation
map("n", "<leader>[", vim.cmd.BufferPrevious)
map("n", "<leader>]", vim.cmd.BufferNext)
map("n", "<leader>w", vim.cmd.BufferClose)
map("n", "<leader>W", "<cmd>wa|%bd|e#|bd#<CR>")
map("n", "<leader>T", vim.cmd.BufferClose)

-- windows navigation
map("n", "<leader><Left>", "<C-W><Left>")
map("n", "<leader><Right>", "<C-W><Right>")
map("n", "<leader><Up>", "<C-W><Up>")
map("n", "<leader><Down>", "<C-W><Down>")

map("v", "ii", "aBoVo")
map("o", "ii", ":normal vii<CR>")
