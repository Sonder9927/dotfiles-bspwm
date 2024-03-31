local wezterm = require("wezterm")
local act = wezterm.action

local colors = require("lua/rose-pine").colors()
local window_frame = require("lua/rose-pine").window_frame()

local config = {
	font_size = 20,

	use_fancy_tab_bar = false,
	hide_tab_bar_if_only_one_tab = true,
	window_decorations = "RESIZE",
	show_new_tab_button_in_tab_bar = false,
	window_background_opacity = 0.9,

	text_background_opacity = 0.9,
	adjust_window_size_when_changing_font_size = false,

	window_padding = { left = 20, right = 20, top = 20, bottom = 5 },
}

config.font = wezterm.font_with_fallback({
	{
		family = "JetBrainsMono Nerd Font",
		weight = "Medium",
		harfbuzz_features = { "calt=0", "clig=0", "liga=0" },
	},
	{ family = "Terminus", weight = "Bold" },
	"Noto Color Emoji",
})

config.keys = { { key = "v", mods = "CTRL", action = act.PasteFrom("Clipboard") } }
config.mouse_bindings = {
	{
		event = { Down = { streak = 1, button = "Right" } },
		mods = "NONE",
		action = act.PasteFrom("Clipboard"),
	},
	{
		event = { Up = { streak = 1, button = "Left" } },
		mods = "NONE",
		action = act.CompleteSelection("ClipboardAndPrimarySelection"),
	},
	{ event = { Up = { streak = 1, button = "Left" } }, mods = "CTRL", action = act.OpenLinkAtMouseCursor },
}

config.colors = colors
config.window_frame = window_frame

return config
