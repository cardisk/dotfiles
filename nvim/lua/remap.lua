vim.g.mapleader = " "

-- Generics -------------------------------------------------------------------

-- Opening the NetRW
-- vim.keymap.set("n", "<leader>q", vim.cmd.Ex)
vim.keymap.set("n", "<S-Tab>", vim.cmd.Ex) -- Testing a new binding.

-- Remapping $ and ^
vim.keymap.set("n", "1", "^")
vim.keymap.set("n", "0", "$")

-- Remapping ctrl-c to esc
vim.keymap.set("n", "<C-c>", "<Esc>")
vim.keymap.set("i", "<C-c>", "<Esc>")
vim.keymap.set("v", "<C-c>", "<Esc>")

-- Inverting 'visual line' with 'visual'
-- vim.keymap.set("n", "v", "V")
-- vim.keymap.set("n", "V", "v")

-- Selecting all
-- vim.keymap.set("n", "<C-a>", "ggVG") -- Disabled due to a collision.

-- Save current buffer
vim.keymap.set("n", "<C-s>", "<cmd> w <CR>")

-- Save and quit
vim.keymap.set("n", "<C-q>", "<cmd> wq <CR>")

-- Disable highlighting
-- vim.keymap.set("n", "<C-/>", "<cmd> noh <CR>")
vim.keymap.set("n", "\\", "<cmd> noh <CR>") -- Testing a new binding.

-------------------------------------------------------------------------------

-- Splitting panes ------------------------------------------------------------

-- Split horizontally the same window
vim.keymap.set("n", "|", "<cmd> vsplit <CR><C-W><C-W>")

-- Split vertically the same window
vim.keymap.set("n", "_", "<cmd> split <CR>")

-- Split horizontally a new empty window
vim.keymap.set("n", "<leader>n", "<cmd> new <CR>")

-------------------------------------------------------------------------------

-- Moving cursor through windows ----------------------------------------------

-- Going to the upper window
vim.keymap.set("n", "<leader><Up>", "<C-W><Up>")

-- Going to the bottom window
vim.keymap.set("n", "<leader><Down>", "<C-W><Down>")

-- Going to the left window
vim.keymap.set("n", "<leader><Left>", "<C-W><Left>")

-- Going to the right window
vim.keymap.set("n", "<leader><Right>", "<C-W><Right>")

-------------------------------------------------------------------------------

-- Plugins remaps -------------------------------------------------------------

-- Telescope
vim.keymap.set("n", "<C-f>", "<cmd> Telescope find_files <CR>")
vim.keymap.set("n", "<C-b>", "<cmd> Telescope buffers <CR>")
vim.keymap.set("n", "<C-g>", "<cmd> Telescope git_files <CR>")
vim.keymap.set("n", "<C-j>", "<cmd> Telescope jumplist <CR>")
vim.keymap.set("n", "<C-l>", "<cmd> Telescope current_buffer_fuzzy_find <CR>")
vim.keymap.set("n", "<C-p>", "<cmd> Telescope command_history <CR>")
vim.keymap.set("n", "<C-e>", "<cmd> Telescope diagnostics <CR>")
-------------------------------------------------------------------------------
