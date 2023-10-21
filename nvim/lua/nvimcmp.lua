local cmp = require("cmp");

cmp.setup({
	snippet = {
    	expand = function(args)
      		require('luasnip').lsp_expand(args.body)
    	end,
  	},

  	mapping = {
		['<C-Space>'] = cmp.mapping.complete(),
		['<CR>'] = cmp.mapping.confirm({ select = true }),	
		["<C-k>"] = cmp.mapping.select_prev_item(), -- previous suggestion
    	["<C-j>"] = cmp.mapping.select_next_item(), -- next suggestion
  	},
  	
	sources = cmp.config.sources({
    	{ name = 'nvim_lsp' },
    	{ name = 'buffer' },
  	}),
})
