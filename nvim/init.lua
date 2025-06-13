-- Plugins
require('plugins')

-- Remaps
require('remap')
require('set')

-- Configs
require('lspzero')
require('treesitter')

-- Commands

-- Theme
vim.cmd.colorscheme('jellybeans-nvim')

-- Smart Research
vim.cmd([[ set smartcase  ]])
vim.cmd([[ set ignorecase ]])

-- XTASM syntax highlighting
vim.cmd([[ autocmd BufRead,BufNewFile *.xt set filetype=xtasm ]])

-- Vim-comentary auto comments for C3
vim.cmd([[ autocmd FileType c3 setlocal commentstring=//\ %s ]])

-- C3 treesitter
vim.filetype.add({
    extension = {
        c3 = "c3",
        c3i = "c3",
        c3t = "c3",
    },
})

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.c3 = {
    install_info = {
        url = "https://github.com/c3lang/tree-sitter-c3",
        files = {"src/parser.c", "src/scanner.c"},
        branch = "main",
    },
}
