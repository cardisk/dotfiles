-- Line numbers
-- vim.opt.nu = true
-- vim.opt.relativenumber = true

-- Tab indentation
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Indent
vim.opt.smartindent = true

-- Line wrap
vim.opt.wrap = true

-- Not sure what this do
vim.opt.swapfile = false
vim.opt.backup = false

-- Search (?)
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- Colors
vim.opt.termguicolors = true

-- Lines displayed when scrolling up or down
vim.opt.scrolloff = 10

-- Not sure what this do
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

-- Apply a brightercolor to a specific column
-- vim.opt.colorcolumn = "80"

-- Selection shift up/down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Copy over a word without losing the previous buffer
vim.keymap.set("x", "<leader>p", "\"_dP")

-- Apparently for ThePrimeAgen Q cmd is bad
vim.keymap.set("n", "Q", "<nop>")

-- Replace the word where the cursor is
vim.keymap.set("n", "<leader>r", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left>")

-- Chmod +x from vim
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
