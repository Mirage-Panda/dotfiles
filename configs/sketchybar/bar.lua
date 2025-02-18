local colors = require("colors")

-- Equivalent to the --bar domain
sbar.bar({
	topmost = "none",
	height = 40,
	color = colors.bar.bg,
	padding_right = 25,
	padding_left = 5,
	-- padding_right = 2,
	-- padding_left = 2,
})
