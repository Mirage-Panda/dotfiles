return {
	black = 0xff11111b,
	white = 0xffcdd6f4,
	red = 0xfff38ba8,
	green = 0xffa6e3a1,
	blue = 0xff89b4fa,
	yellow = 0xfff9e2af,
	orange = 0xfffab387,
	magenta = 0xffcba6f7,
	grey = 0xff7f849c,
	transparent = 0x00000000,

	bar = {
		bg = 0x551e1e2e,
		border = 0xff2c2e34,
	},
	popup = {
		bg = 0xc01e1e2e,
		border = 0xff7f8490,
	},
	bg1 = 0xff303446,
	bg2 = 0xff414559,

	with_alpha = function(color, alpha)
		if alpha > 1.0 or alpha < 0.0 then
			return color
		end
		return (color & 0x00ffffff) | (math.floor(alpha * 255.0) << 24)
	end,
}
