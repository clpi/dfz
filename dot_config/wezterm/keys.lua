-- local M = {}
-- M.mackeys = {
--
-- }
return {
  -- {key="-", mods="ALT", action="DisableDefaultAssignment"},
  -- {key="+", mods="ALT", action="DisableDefaultAssignment"},
  -- {key="-", mods="CTRL", action="DisableDefaultAssignment"},
  -- {key="+", mods="CTRL", action="DisableDefaultAssignment"},
  -- {key="n", mods="ALT", action="DisableDefaultAssignment"},
  -- {key="f", mods="ALT", action="DisableDefaultAssignment"},
  -- This will create a new split and run your default program inside it
  { key = "-", mods = "CTRL|SHIFT", action = wezterm.action({ SplitVertical = { domain = "CurrentPaneDomain" } }) },
  { key = "=", mods = "CTRL|SHIFT", action = wezterm.action({ SplitHorizontal = { domain = "CurrentPaneDomain" } }) },

  { key = "-", mods = "ALT", action = wezterm.action({ SplitVertical = { domain = "CurrentPaneDomain" } }) },
  { key = "_", mods = "ALT|SHIFT", action = wezterm.action({ SplitHorizontal = { domain = "CurrentPaneDomain" } }) },


  { key = "z", mods = "ALT", action = "TogglePaneZoomState" },
  { key = "r", mods = "ALT|CTRL", action = "ReloadConfiguration" },

  { key = "t", mods = "ALT", action = wezterm.action({ SpawnTab = "CurrentPaneDomain" }) },
  { key = "t", mods = "CTRL|SHIFT", action = wezterm.action({ SpawnTab = "CurrentPaneDomain" }) },

  { key = "x", mods = "CTRL|SHIFT", action = wezterm.action({ CloseCurrentPane = { confirm = false } }) },
  { key = "w", mods = "CTRL|SHIFT", action = wezterm.action({ CloseCurrentTab = { confirm = false } }) },

  { key = "x", mods = "ALT", action = wezterm.action({ CloseCurrentPane = { confirm = false } }) },
  { key = "w", mods = "ALT", action = wezterm.action({ CloseCurrentPane = { confirm = false } }) },
  { key = "w", mods = "ALT|SHIFT", action = wezterm.action({ CloseCurrentTab = { confirm = false } }) },

  -- NOTE: Natigate Pane Sections
  { key = "h", mods = "ALT", action = wezterm.action({ ActivatePaneDirection = "Left" }) },
  { key = "l", mods = "ALT", action = wezterm.action({ ActivatePaneDirection = "Right" }) },
  { key = "k", mods = "ALT", action = wezterm.action({ ActivatePaneDirection = "Up" }) },
  { key = "j", mods = "ALT", action = wezterm.action({ ActivatePaneDirection = "Down" }) },

  { key = "h", mods = "SHIFT|CTRL", action = wezterm.action({ ActivatePaneDirection = "Left" }) },
  { key = "l", mods = "SHIFT|CTRL", action = wezterm.action({ ActivatePaneDirection = "Right" }) },
  { key = "k", mods = "SHIFT|CTRL", action = wezterm.action({ ActivatePaneDirection = "Up" }) },
  { key = "j", mods = "SHIFT|CTRL", action = wezterm.action({ ActivatePaneDirection = "Down" }) },


  { key = "H", mods = "ALT|SHIFT", action = wezterm.action({ AdjustPaneSize = { "Left", 2 } }) },
  { key = "J", mods = "ALT|SHIFT", action = wezterm.action({ AdjustPaneSize = { "Down", 2 } }) },
  { key = "K", mods = "ALT|SHIFT", action = wezterm.action({ AdjustPaneSize = { "Up", 2 } }) },
  { key = "L", mods = "ALT|SHIFT", action = wezterm.action({ AdjustPaneSize = { "Right", 2 } }) },

  -- Pane Cycles
  { key = "n", mods = "ALT|CTRL", action = wezterm.action({ ActivatePaneDirection = "Next" }) },
  { key = "p", mods = "ALT|CTRL", action = wezterm.action({ ActivatePaneDirection = "Prev" }) },

  { key = "n", mods = "SHIFT|CTRL", action = wezterm.action({ ActivatePaneDirection = "Next" }) },
  { key = "p", mods = "SHIFT|CTRL", action = wezterm.action({ ActivatePaneDirection = "Prev" }) },

  { key = ",", mods = "CTRL|SHIFT", action = wezterm.action({ MoveTabRelative = -1 }) },
  { key = ".", mods = "CTRL|SHIFT", action = wezterm.action({ MoveTabRelative = 1 }) },

  { key = ",", mods = "CTRL", action = wezterm.action({ ActivateTabRelative = -1 }) },
  { key = ".", mods = "CTRL", action = wezterm.action({ ActivateTabRelative = 1 }) },

  { key = "J", mods = "CTRL|ALT", action = wezterm.action({ ActivateTabRelative = 1 }) },
  { key = "K", mods = "CTRL|ALT", action = wezterm.action({ ActivateTabRelative = -1 }) },
  { key = "H", mods = "ALT|CTRL", action = wezterm.action({ ActivatePaneDirection = "Next" }) },
  { key = "L", mods = "ALT|CTRL", action = wezterm.action({ ActivatePaneDirection = "Prev" }) },

  -- Pane Resize

  { key = "H", mods = "CTRL|ALT|SHIFT", action = wezterm.action({ AdjustPaneSize = { "Left", 2 } }) },
  { key = "J", mods = "CTRL|ALT|SHIFT", action = wezterm.action({ AdjustPaneSize = { "Down", 2 } }) },
  { key = "K", mods = "CTRL|ALT|SHIFT", action = wezterm.action({ AdjustPaneSize = { "Up", 2 } }) },
  { key = "L", mods = "CTRL|ALT|SHIFT", action = wezterm.action({ AdjustPaneSize = { "Right", 2 } }) },

  { key = ",", mods = "ALT|SHIFT", action = wezterm.action({ ActivateTabRelative = -1 }) },
  { key = ".", mods = "ALT|SHIFT", action = wezterm.action({ ActivateTabRelative = 1 }) },

  -- { key = ",", mods = "ALT", action = wezterm.action({ MoveTabRelative = -1 }) },
  -- { key = ".", mods = "ALT", action = wezterm.action({ MoveTabRelative = 1 }) },

  { key = ".", mods = "ALT", action = wezterm.action({ ActivateTabRelative = 1 }) },
  { key = ",", mods = "ALT", action = wezterm.action({ ActivateTabRelative = -1 }) },

  { key = "{", mods = "ALT", action = wezterm.action({ MoveTabRelative = 1 }) },
  { key = "}", mods = "ALT|SHIFT", action = wezterm.action({ MoveTabRelative = -1 }) },


  { key = "]", mods = "CTRL|SHIFT", action = wezterm.action({ MoveTabRelative = 1 }) },
  { key = "[", mods = "CTRL|SHIFT", action = wezterm.action({ MoveTabRelative = -1 }) },

  { key = "G", mods = "ALT|SHIFT", action = "ShowTabNavigator" },
  { key = "O", mods = "ALT|SHIFT", action = "ShowLauncher" },

  { key = "f", mods = "ALT", action = "ToggleFullScreen" },
  { key = "f", mods = "ALT", action = "ToggleFullScreen" },
  { key = "f", mods = "CTRL|SHIFT", action = "ToggleFullScreen" },

  { key = "n", mods = "ALT|CTRL", action = "SpawnWindow" },

  { key = "z", mods = "ALT|CTRL", action = "QuickSelect" },
}
return M
