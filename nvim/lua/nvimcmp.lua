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

    	["<Tab>"] = cmp.mapping(function(fallback)
      		if cmp.visible() then
        		cmp.select_next_item()
      		elseif luasnip.expand_or_jumpable() then
        		luasnip.expand_or_jump()
      		elseif has_words_before() then
        		cmp.complete()
      		else
        		fallback()
      		end
    	end, { "i", "s" }),

    	["<S-Tab>"] = cmp.mapping(function(fallback)
      		if cmp.visible() then
        		cmp.select_prev_item()
      		elseif luasnip.jumpable(-1) then
        		luasnip.jump(-1)
      		else
        		fallback()
      		end
    	end, { "i", "s" }),

  	},
  	
	sources = cmp.config.sources({
    	{ name = 'nvim_lsp' },
    	{ name = 'buffer' },
  	}),
})
