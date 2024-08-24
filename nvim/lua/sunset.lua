local M = {}

local config = require("sunset.config")

local function set_highlights()
	local variant = config.variant

	local palette

	if variant == "dark" then
		palette = require("sunset.palette").dark
	else
		palette = require("sunset.palette").light
	end

	local groups = {}
	local highlights = {}

	local default_highlights = {
		-- Editor
		Normal = { fg = palette.color00, bg = palette.background },
		LineNr = { fg = palette.color3 },
		Directory = { fg = palette.color00 },
		Title = { fg = palette.color00 },
		Visual = { bg = palette.color5 },
		CursorLine = { bg = palette.color5 },
		VertSplit = { fg = palette.color3 },
		EndOfBuffer = { fg = palette.color00 },
		Pmenu = { fg = palette.color00, bg = palette.color5 },
		DiagnosticUnnecessary = { fg = palette.color0 },

		DiffAdd = { bg = palette.background, fg = "#99FFE4" },
		DiffChange = { bg = palette.background, fg = "#FFCFA8" },
		DiffDelete = { bg = palette.background, fg = "#FF8080" },
		DiffText = { bg = palette.background, fg = "#65737E" },

		SignColumn = {  bg = palette.background },

		

		-- Code
		Comment = { fg = palette.comment },
		Constant = { fg = palette.color00 },
		String = { fg = palette.color00 },
		Character = { fg = palette.color00 },
		Number = { fg = palette.color00 },
		Boolean	= { fg = palette.color00 },
		Float = { fg = palette.color00 },
		Identifier = { fg = palette.color00 },
		Function = { fg = palette.color00 },
		Statement = { fg = palette.color00 },
		Conditional = { fg = palette.color00 },
		Repeat = { fg = palette.color00 },
		Label = { fg = palette.color00 },
		Operator = { fg = palette.color00 },
		Keyword = { fg = palette.color00 },
		Exception = { fg = palette.color00 },
		PreProc	= { fg = palette.color00 },
		Include	= { fg = palette.color00 },
		Define = { fg = palette.color00 },
		Macro = { fg = palette.color00 },
		PreCondit = { fg = palette.color00 },
		Type = { fg = palette.color00 },
		StorageClass = { fg = palette.color00 },
		Structure = { fg = palette.color00 },
		Typedef	= { fg = palette.color00 },
		Special	= { fg = palette.color00 },
		SpecialChar	= { fg = palette.color00 },
		Tag	= { fg = palette.color00 },
		Delimiter = { fg = palette.color00 },
		SpecialComment = { fg = palette.color00 },
		Debug = { fg = palette.color00 },
		Underlined = { fg = palette.color00 },
		Ignore = { fg = palette.color00 },
		Error = { fg = palette.color00 },
		Todo = { fg = palette.color00 },
		Added = { fg = palette.color00 },
		Changed	= { fg = palette.color00 },
		Removed	= { fg = palette.color00 },
	}

	for group, highlight in pairs(default_highlights) do
		highlights[group] = highlight
	end

	for group, highlight in pairs(highlights) do
		if highlight.blend ~= nil and (highlight.blend >= 0 and highlight.blend <= 100) and highlight.bg ~= nil then
			highlight.bg = utilities.blend(highlight.bg, highlight.blend_on or palette.base, highlight.blend / 100)
		end
		vim.api.nvim_set_hl(0, group, highlight)
	end
end

function M.colorscheme()
	vim.opt.termguicolors = true

	if vim.g.colors_name then
		vim.cmd("hi clear")
		vim.cmd("syntax reset")
	end

	vim.g.colors_name = "sunset"

	set_highlights()
end

function M.setup(options)
	config = options
	print(config["variant"])

	vim.cmd("colorscheme sunset")
end

return M
