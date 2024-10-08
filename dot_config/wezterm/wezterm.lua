local wezterm = require("wezterm")
-- local wsl = require("wsl.wsl")
local vbell = {
	fade_in_function = "EaseIn",
	fade_in_duration_ms = 150,
	fade_out_function = "EaseOut",
	fade_out_duration_ms = 150,
	target = "CursorColor",
}
local wframe = {
	inactive_titlebar_bg = "#353535",
	active_titlebar_bg = "#2b2042",
	inactive_titlebar_fg = "#cccccc",
	active_titlebar_fg = "#ffffff",
	inactive_titlebar_border_bottom = "#2b2042",
	active_titlebar_border_bottom = "#2b2042",
	button_fg = "#cccccc",
	button_bg = "#2b2042",
	button_hover_fg = "#ffffff",
	button_hover_bg = "#3b3052",
}
local keys = {
	-- {key="-", mods="ALT", action="DisableDefaultAssignment"},
	-- {key="+", mods="ALT", action="DisableDefaultAssignment"},
	-- {key="-", mods="CTRL", action="DisableDefaultAssignment"},
	-- {key="+", mods="CTRL", action="DisableDefaultAssignment"},
	-- {key="n", mods="ALT", action="DisableDefaultAssignment"},
	-- {key="f", mods="ALT", action="DisableDefaultAssignment"},
	-- This will create a new split and run your default program inside it
	{
		key = "-",
		mods = "CTRL|SHIFT",
		action = wezterm.action({
			SplitVertical = {
				use_fancy_tab_bar = true,
				completion = "CurrentPane",
				args = { program = "/usr/bin/zsh" },
				domain = "CurrentPaneDomain",
			},
		}),
	},
	{
		key = "=",
		mods = "CTRL|SHIFT",
		action = wezterm.action({
			SplitHorizontal = {
				use_fancy_tab_bar = true,
				completion = "CurrentPane",
				args = { program = "/usr/bin/zsh" },
				domain = "CurrentPaneDomain",
			},
		}),
	},
	{
		key = "-",
		mods = "ALT",
		action = wezterm.action({ SplitVertical = { domain = "CurrentPaneDomain" } }),
	},
	{
		key = "_",
		mods = "ALT|SHIFT",
		action = wezterm.action({
			SplitHorizontal = { domain = "CurrentPaneDomain" },
		}),
	},
	{ key = "z", mods = "ALT", action = "TogglePaneZoomState" },
	{ key = "r", mods = "ALT|CTRL", action = "ReloadConfiguration" },
	{
		key = "t",
		mods = "ALT",
		action = wezterm.action({ SpawnTab = "CurrentPaneDomain" }),
	},
	{
		key = "t",
		mods = "CTRL|SHIFT",
		action = wezterm.action({ SpawnTab = "CurrentPaneDomain" }),
	},
	{
		key = "x",
		mods = "CTRL|SHIFT",
		action = wezterm.action({ CloseCurrentPane = { confirm = false } }),
	},
	{
		key = "w",
		mods = "CTRL|SHIFT",
		action = wezterm.action({ CloseCurrentTab = { confirm = false } }),
	},
	{
		key = "x",
		mods = "ALT",
		action = wezterm.action({ CloseCurrentPane = { confirm = false } }),
	},
	{
		key = "w",
		mods = "ALT",
		action = wezterm.action({ CloseCurrentPane = { confirm = false } }),
	},
	{
		key = "w",
		mods = "ALT|SHIFT",
		action = wezterm.action({ CloseCurrentTab = { confirm = false } }),
	}, -- NOTE: Natigate Pane Sections
	{
		key = "h",
		mods = "ALT",
		action = wezterm.action({ ActivatePaneDirection = "Left" }),
	},
	{
		key = "l",
		mods = "ALT",
		action = wezterm.action({ ActivatePaneDirection = "Right" }),
	},
	{
		key = "k",
		mods = "ALT",
		action = wezterm.action({ ActivatePaneDirection = "Up" }),
	},
	{
		key = "j",
		mods = "ALT",
		action = wezterm.action({ ActivatePaneDirection = "Down" }),
	},
	{
		key = "h",
		mods = "SHIFT|CTRL",
		action = wezterm.action({ ActivatePaneDirection = "Left" }),
	},
	{
		key = "l",
		mods = "SHIFT|CTRL",
		action = wezterm.action({ ActivatePaneDirection = "Right" }),
	},
	{
		key = "k",
		mods = "SHIFT|CTRL",
		action = wezterm.action({ ActivatePaneDirection = "Up" }),
	},
	{
		key = "j",
		mods = "SHIFT|CTRL",
		action = wezterm.action({ ActivatePaneDirection = "Down" }),
	},
	{
		key = "H",
		mods = "ALT|SHIFT",
		action = wezterm.action({ AdjustPaneSize = { "Left", 2 } }),
	},
	{
		key = "J",
		mods = "ALT|SHIFT",
		action = wezterm.action({ AdjustPaneSize = { "Down", 2 } }),
	},
	{
		key = "K",
		mods = "ALT|SHIFT",
		action = wezterm.action({ AdjustPaneSize = { "Up", 2 } }),
	},
	{
		key = "L",
		mods = "ALT|SHIFT",
		action = wezterm.action({ AdjustPaneSize = { "Right", 2 } }),
	}, -- Pane Cycles
	{
		key = "n",
		mods = "ALT|CTRL",
		action = wezterm.action({ ActivatePaneDirection = "Next" }),
	},
	{
		key = "p",
		mods = "ALT|CTRL",
		action = wezterm.action({ ActivatePaneDirection = "Prev" }),
	},
	{
		key = "n",
		mods = "SHIFT|CTRL",
		action = wezterm.action({ ActivatePaneDirection = "Next" }),
	},
	{
		key = "p",
		mods = "SHIFT|CTRL",
		action = wezterm.action({ ActivatePaneDirection = "Prev" }),
	},
	{
		key = ",",
		mods = "CTRL|SHIFT",
		action = wezterm.action({ MoveTabRelative = -1 }),
	},
	{
		key = ".",
		mods = "CTRL|SHIFT",
		action = wezterm.action({ MoveTabRelative = 1 }),
	},

	{
		key = ",",
		mods = "CTRL",
		action = wezterm.action({ ActivateTabRelative = -1 }),
	},
	{
		key = ".",
		mods = "CTRL",
		action = wezterm.action({ ActivateTabRelative = 1 }),
	},
	{
		key = "J",
		mods = "CTRL|ALT",
		action = wezterm.action({ ActivateTabRelative = 1 }),
	},
	{
		key = "K",
		mods = "CTRL|ALT",
		action = wezterm.action({ ActivateTabRelative = -1 }),
	},
	{
		key = "H",
		mods = "ALT|CTRL",
		action = wezterm.action({ ActivatePaneDirection = "Next" }),
	},
	{
		key = "L",
		mods = "ALT|CTRL",
		action = wezterm.action({ ActivatePaneDirection = "Prev" }),
	}, -- Pane Resize
	{
		key = "H",
		mods = "CTRL|ALT|SHIFT",
		action = wezterm.action({ AdjustPaneSize = { "Left", 2 } }),
	},
	{
		key = "J",
		mods = "CTRL|ALT|SHIFT",
		action = wezterm.action({ AdjustPaneSize = { "Down", 2 } }),
	},
	{
		key = "K",
		mods = "CTRL|ALT|SHIFT",
		action = wezterm.action({ AdjustPaneSize = { "Up", 2 } }),
	},
	{
		key = "L",
		mods = "CTRL|ALT|SHIFT",
		action = wezterm.action({ AdjustPaneSize = { "Right", 2 } }),
	},
	{
		key = ",",
		mods = "CMD|ALT|SHIFT",
		action = wezterm.action({ ActivateTabRelative = -1 }),
	},
	{
		key = ".",
		mods = "CMD|ALT|SHIFT",
		action = wezterm.action({ ActivateTabRelative = 1 }),
	},

	-- { key = ",", mods = "ALT", action = wezterm.action({ MoveTabRelative = -1 }) },
	-- { key = ".", mods = "ALT", action = wezterm.action({ MoveTabRelative = 1 }) },

	{
		key = ".",
		mods = "ALT",
		action = wezterm.action({ ActivateTabRelative = 1 }),
	},
	{
		key = ",",
		mods = "ALT",
		action = wezterm.action({ ActivateTabRelative = -1 }),
	},

	{ key = "{", mods = "ALT", action = wezterm.action({ MoveTabRelative = 1 }) },
	{
		key = "}",
		mods = "ALT|SHIFT",
		action = wezterm.action({ MoveTabRelative = -1 }),
	},
	{
		key = "]",
		mods = "CTRL|SHIFT",
		action = wezterm.action({ MoveTabRelative = 1 }),
	},
	{
		key = "[",
		mods = "CTRL|SHIFT",
		action = wezterm.action({ MoveTabRelative = -1 }),
	},
	{ key = "G", mods = "ALT|SHIFT", action = "ShowTabNavigator" },
	{ key = "O", mods = "ALT|SHIFT", action = "ShowLauncher" },

	{ key = "f", mods = "ALT", action = "ToggleFullScreen" },
	{ key = "f", mods = "ALT", action = "ToggleFullScreen" },
	{ key = "f", mods = "CTRL|SHIFT", action = "ToggleFullScreen" },

	{ key = "n", mods = "ALT|CTRL", action = "SpawnWindow" },

	{ key = "z", mods = "ALT|CTRL", action = "QuickSelect" },
}
local fancy = {
	inactive_titlebar_bg = "#141925",
	active_titlebar_bg = "#2b2042",
	inactive_titlebar_fg = "#cccccc",
	active_titlebar_fg = "#ffffff",
	inactive_titlebar_border_bottom = "#2b2042",
	active_titlebar_border_bottom = "#2b2042",
	button_fg = "#cccccc",
	button_bg = "#2b2042",
	button_hover_fg = "#ffffff",
	button_hover_bg = "#3b3052",
	font = wezterm.font({ family = "Iosevka Nerd Font" }),
}

local cfg = {
	disable_default_key_bindings = true,
	font = wezterm.font({
		family = "IosevkaTerm Nerd Font",
	}),
	initial_cols = 360,
	initial_rows = 240,
	harfbuzz_features = { "kern", "liga", "clig", "calt" },
	window_padding = { top = 0, bottom = 0, left = 0, right = 0 },
	colors = {
		tab_bar = {
			background = "#141925",
			active_tab = {
				fg_color = "#182a3c",
				bg_color = "#BBE67E",
				intensity = "Normal",
				-- italic=false,
				-- underline=false,
			},
			inactive_tab = {
				bg_color = "#272d38",
				fg_color = "#8a92aa",
				intensity = "Half",
				-- italic=false,
				-- underline=false,
			},
			new_tab_hover = {
				fg_color = "#101b22",
				bg_color = "#FFD57F",
				intensity = "Bold",
				-- italic=false,
				-- underline=false,
			},
			new_tab = {
				bg_color = "#1a202a",
				fg_color = "#FFD57F",
				intensity = "Normal",
				-- italic=true,
				-- underline=false,
			},
		},
	},
	-- color_scheme = "Ayu",
	line_height = 1.1,
	use_fancy_tab_bar = false,
	tab_bar_at_bottom = false,
	use_cap_height_to_scale_fallback_fonts = true,
	use_resize_increments = true,
	enable_scroll_bar = true,
	-- wsl_domains = {},
	-- visual_bell = vbell,
	show_tab_index_in_tab_bar = true,
	-- harfbuzz_features = { "ss13" },
	allow_square_glyphs_to_overflow_width = "Always",
	keys = keys,
	color_scheme = "Ayu Dark (Gogh)",
	native_macos_fullscreen_mode = true,
	-- default_prog = {"/usr/bin/zsh", "-l"},
	window_background_opacity = 1.0,
	text_background_opacity = 1.0,
}
return cfg
