local function map(m, k, v)
	vim.keymap.set(m, k, v, {silent = true})
end

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Resize with arrows when using multiple windows
map("n", "<C-Up>", ":resize -2<CR>")
map("n", "<c-down>", ":resize +2<cr>")
map("n", "<c-right>", ":vertical resize -2<cr>")
map("n", "<c-left>", ":vertical resize +2<cr>")

-- Better window navigation
map("n", "<C-h>", "<C-w>h") -- left window
map("n", "<C-k>", "<C-w>k") -- up window
map("n", "<C-j>", "<C-w>j") -- down window
map("n", "<C-l>", "<C-w>l") -- right window


