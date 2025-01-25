local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.font_size = 10
-- config.font = wezterm.font("Jetbrains Mono", { weight = 'Regular', italic = false })
config.font = wezterm.font("JetBrainsMonoNL Nerd Font", {weight="Regular", stretch="Normal", style="Normal"})
config.automatically_reload_config = true
config.enable_tab_bar = false
config.window_decorations = "RESIZE"
config.adjust_window_size_when_changing_font_size = false
config.harfbuzz_features = { "calt=0" }
config.max_fps = 175
config.enable_kitty_graphics = true
config.window_close_confirmation = "NeverPrompt"
config.window_background_opacity = 0.90
config.macos_window_background_blur = 12
config.audible_bell = "Disabled"
config.default_prog = { "pwsh" }

config.window_padding = {
	left = 18,
	right = 15,
	top = 10,
	bottom = 5,
}

-- Key bindings delete word
config.keys = {
	{
		key = "LeftArrow",
		mods = "OPT",
		action = wezterm.action({ SendString = "\x1bb" }),
	},
	{
		key = "RightArrow",
		mods = "OPT",
		action = wezterm.action({ SendString = "\x1bf" }),
	},
}

-- Configs
-- Add Custom Color Scheme
config.color_scheme = "rose-pine"
config.colors = {
	-- background = "#12151B", -- lighter gray
	-- background = "#0D0D0D", -- darker gray
	-- background = "#000", -- pure black
	-- cursor_bg = "#9B96B5",
	-- cursor_fg = "#1a1a1e",
	-- cursor_border = "#9B96B5",
}

return config
