local builtin = require("telescope.builtin")

local function map(m, k, v)
	vim.keymap.set(m, k, v, {silent = true})
end

map("n", "<leader>f", builtin.find_files)
map("n", "<leader>g", builtin.live_grep)

require("telescope").setup {
	defaults = { file_ignore_patterns = {"target"} }
}
