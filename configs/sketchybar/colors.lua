-- return {
-- 	black = 0xff181819,
-- 	white = 0xffe2e2e3,
-- 	red = 0xfffc5d7c,
-- 	green = 0xff9ed072,
-- 	blue = 0xff76cce0,
-- 	yellow = 0xffe7c664,
-- 	orange = 0xfff39660,
-- 	magenta = 0xffb39df3,
-- 	grey = 0xff7f8490,
-- 	transparent = 0x00000000,
--
-- 	bar = {
-- 		bg = 0x882c2e34,
-- 		border = 0xff2c2e34,
-- 	},
-- 	popup = {
-- 		bg = 0xc02c2e34,
-- 		border = 0xff7f8490,
-- 	},
-- 	bg1 = 0xff363944,
-- 	bg2 = 0xff414550,
--
-- 	with_alpha = function(color, alpha)
-- 		if alpha > 1.0 or alpha < 0.0 then
-- 			return color
-- 		end
-- 		return (color & 0x00ffffff) | (math.floor(alpha * 255.0) << 24)
-- 	end,
-- }

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
		bg = 0x991e1e2e,
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
