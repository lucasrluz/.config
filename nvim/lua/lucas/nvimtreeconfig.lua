-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup {}

-- Maps
local function map(m, k, v)
	vim.keymap.set(m, k, v, {silent = true})
end

local api = require("nvim-tree.api")

map("n", "<leader>e", api.tree.toggle)
