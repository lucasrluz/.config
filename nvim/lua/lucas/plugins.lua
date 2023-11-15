local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({	
	-- Lualine
	"nvim-lualine/lualine.nvim",

	-- Zen Mode
	{
	  "folke/zen-mode.nvim",
	  opts = {
		  window = {
			width = 80, -- width of the Zen window
			height = 1, -- height of the Zen window	
		  },
	  }
	},

	-- Theme
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		opts = {	
			color_overrides = {
				mocha = {
					base = "#141414",
					mantle = "#141414",
					crust = "#141414",
				},
			},
		},
	},
	{
	  "folke/tokyonight.nvim",
	  lazy = false,
	  priority = 1000,
	  opts = {},
	},

	-- LSP
	"neovim/nvim-lspconfig",

	-- Mason
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",

	-- Treesitter
	"nvim-treesitter/nvim-treesitter",

	-- Git
	"lewis6991/gitsigns.nvim",

	-- Autopairs
	"windwp/nvim-autopairs",

	-- Nvim Tree
	"nvim-tree/nvim-tree.lua",
	"nvim-tree/nvim-web-devicons",

	-- Cmp
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path",
	"hrsh7th/cmp-cmdline",
	"hrsh7th/nvim-cmp",
	"L3MON4D3/LuaSnip",
	"saadparwaiz1/cmp_luasnip",

	-- Telescope
	"nvim-lua/plenary.nvim",
	"BurntSushi/ripgrep",
	"nvim-telescope/telescope.nvim"
})
