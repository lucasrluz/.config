-- Mason
require("mason").setup()
require("mason-lspconfig").setup()

-- Languages setup
local lspconfig = require("lspconfig")

lspconfig.jdtls.setup {}

vim.keymap.set('n', '<space>gl', vim.diagnostic.open_float)

-- Keymaps
vim.api.nvim_create_autocmd('LspAttach', {
	group = vim.api.nvim_create_augroup('UserLspConfig', {}),
	callback = function(ev)
    	-- Enable completion triggered by <c-x><c-o>
    	vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    	local opts = { buffer = ev.buf }

    	vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
		vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
		vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
		vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
		vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
	end,
})
