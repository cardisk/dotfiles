local lsp_zero = require('lsp-zero')

local swift_lsp = vim.api.nvim_create_augroup("swift_lsp", { clear = true })
vim.api.nvim_create_autocmd("FileType", {
	pattern = { "swift" },
	callback = function()
		local root_dir = vim.fs.dirname(vim.fs.find({
			"Package.swift",
			".git",
		}, { upward = true })[1])
		local client = vim.lsp.start({
			name = "sourcekit-lsp",
			cmd = { "sourcekit-lsp" },
			root_dir = root_dir,
		})
		vim.lsp.buf_attach_client(0, client)
	end,
	group = swift_lsp,
})

lsp_zero.on_attach(function(client, bufnr)
    local opts = { buffer = bufnr, remap = false }

    lsp_zero.default_keymaps({
        buffer = bufnr,
        preserve_mappings = false
    })

    vim.keymap.set('n', '<leader>vr', function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set('n', '<C-CR>', function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set('n', '<Tab>', function() vim.diagnostic.open_float() end, opts)
end)

require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = {
      'clangd', 'rust_analyzer'
    },
    handlers = {
        function(server_name)
          require('lspconfig')[server_name].setup({})
        end,
    },
})

local cmp = require('cmp')
local cmp_action = lsp_zero.cmp_action()

cmp.setup({
    window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    },

    sources = {
        { name = 'path' },
        { name = 'nvim_lsp' },
        { name = 'nvim_lua' },
        { name = 'luasnip' },
        { name = 'buffer' },
    },

    mapping = cmp.mapping.preset.insert({
        -- Confirm completion when something is selected
        ['<CR>'] = cmp.mapping.confirm({ select = false }),

        ['<Tab>'] = cmp_action.tab_complete(),
        ['<S-Tab>'] = cmp_action.select_prev_or_fallback(),

        -- Scroll up and down the documentation window
        ['<C-u>'] = cmp.mapping.scroll_docs(-4),
        ['<C-d>'] = cmp.mapping.scroll_docs(4),
    }),

    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },

    -- Display the source name in the completion menu
    formatting = lsp_zero.cmp_format({ details = true }),
})
