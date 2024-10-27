local wezterm = require("wezterm")

function scheme_for_appearance(appearance)
	if appearance:find("Dark") then
		return "Catppuccin Mocha"
	else
		return "Catppuccin Latte"
	end
end

local config = {
	adjust_window_size_when_changing_font_size = false,
	-- color_scheme = scheme_for_appearance(wezterm.gui.get_appearance()),
	color_scheme = "Catppuccin Mocha",
	font_size = 16,
	window_decorations = "RESIZE",
	hide_tab_bar_if_only_one_tab = true,
	use_fancy_tab_bar = false,
	tab_bar_at_bottom = true,
	window_background_opacity = 0.8, -- Opacity setting
	macos_window_background_blur = 25,
}

-- config.font = wezterm.font("Fira Code CustomLigatures")
config.font = wezterm.font_with_fallback({
	{ family = "Fira Code CustomLigatures" },
	{ family = "Symbols Nerd Font Mono" },
})
config.window_padding = {
	left = 10,
	right = 10,
	top = 10,
	bottom = 10,
}

return config
