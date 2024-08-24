local mix = require("sunset.utils").mix
local variants = {
	dark = {
		-- Editor colors
		background = "#101010",
		text = mix("#FFFFFF", "#000000", math.abs(0.80)),
		comment = "#383838",
		
		color0 = "#FFCFA8", -- orange
		color1 = mix("#99FFE4", "#000000", math.abs(0.85)), -- green
		color2 = "#A0A0A0", -- gray
		color3 = "#505050", -- black gray
		color4 = "#FF8080", -- red
		color5 = "#232323", -- white white gray
		color6 = "#f2e9e1", -- creme

		-- Code colors
		color00 = "#AAAAAA",
	},
	
	light = {
		-- Editor colors
		background = "#EBEBEB",
		text = "#575279",
		comment = "#C3C3C3",
		color0 = "#d7827e", -- rose
		color1 = "#ea9d34", -- yellow 
		color2 = "#286983", -- green
		color3 = "#9893a5", -- white gray
		color4 = "#907aa9", -- purple
		color5 = "#dfdad9", -- white white gray
		color6 = "#f2e9e1", -- creme

		-- Code colors
		color00 = "#515151",
	}
}

return variants
