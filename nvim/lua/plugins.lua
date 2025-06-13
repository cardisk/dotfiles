-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Themes
    use 'morhetz/gruvbox'
    use 'Shatur/neovim-ayu'
    use 'alljokecake/naysayer-theme.nvim'
    use 'ficcdaf/ashen.nvim'
    use 'razcoen/fleet.nvim'
    use 'PinpongTp/comic'
    use 'nonetallt/vim-neon-dark'
    use 'slugbyte/lackluster.nvim'
    use {
        'metalelf0/jellybeans-nvim',
        requires = {
            {'rktjmp/lush.nvim'},
        }
    }
    use 'vim-scripts/jellybeans.vim'
    -- Surrounding things
    use 'tpope/vim-surround'
    -- Commenting things out
    use 'tpope/vim-commentary'
    -- Git wrapper
    use 'tpope/vim-fugitive'
    -- Substituting words
    use 'tpope/vim-abolish'
    -- Finder
    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.x',
        requires = {
            {'nvim-lua/plenary.nvim'}
        }
    }
    -- Buffer formatter
    use 'sbdchd/neoformat'
    -- Alignments
    use 'junegunn/vim-easy-align'

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            -- Uncomment the two plugins below if you want to manage the language servers from neovim
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},
            {'neovim/nvim-lspconfig'},
            -- Autocompletion stuff
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},
            {'L3MON4D3/LuaSnip'},
        }
    }

    -- Treesitter
    use 'nvim-treesitter/nvim-treesitter'
end)
