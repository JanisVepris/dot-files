vim.opt.nu = true
vim.opt.relativenumber = false

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

vim.opt.updatetime = 50
vim.opt.timeoutlen = 300
vim.opt.colorcolumn = "0"

vim.opt.clipboard = "unnamedplus"

vim.opt.cursorline = false

vim.opt.laststatus = 2

vim.opt.fillchars = "eob: " -- remove the end of buffer ~ symbols

vim.filetype.add({ extension = { templ = "templ" } })
