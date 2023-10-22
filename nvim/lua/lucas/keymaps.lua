local function map(m, k, v)
	vim.keymap.set(m, k, v, {silent = true})
end

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Resize with arrows when using multiple windows
map("n", "<M-k>", ":resize -2<CR>")
map("n", "<M-j>", ":resize +2<cr>")
map("n", "<M-l>", ":vertical resize -2<cr>")
map("n", "<M-h>", ":vertical resize +2<cr>")

-- Better window navigation
map("n", "<C-h>", "<C-w>h") -- left window
map("n", "<C-k>", "<C-w>k") -- up window
map("n", "<C-j>", "<C-w>j") -- down window
map("n", "<C-l>", "<C-w>l") -- right window

-- Indetation
map("v", "<", "<gv^")
map("v", ">", ">gv^")
