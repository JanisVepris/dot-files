vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "zq", ":wq<CR>")

vim.keymap.set("n", "J", "mzJ`z") -- cursor remains in place when joining line

vim.keymap.set("x", "<leader>p", '"_dP') -- paste without loosing the copy buffer

-- barbar map
vim.keymap.set("n", "<leader>[", vim.cmd.BufferPrevious)
vim.keymap.set("n", "<leader>]", vim.cmd.BufferNext)
vim.keymap.set("n", "<leader>w", vim.cmd.BufferClose)

vim.keymap.set("v", "ii", "aBoVo")
vim.keymap.set("o", "ii", ":normal vii<CR>")
