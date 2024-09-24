-- Parameters
local border_color = "#333333"

local wezterm = require 'wezterm'
local act = wezterm.action
local config = wezterm.config_builder()

-- Fonts
config.font = wezterm.font_with_fallback {
    'CaskaydiaCoveNerdFont', 'Cascadia Code NF'
}
config.font_size = 18

config.color_scheme = 'Catppuccin Mocha'
config.window_close_confirmation = 'NeverPrompt'
config.window_decorations = "INTEGRATED_BUTTONS | RESIZE"
config.window_frame = {
  border_left_width = '0.25cell',
  border_right_width = '0.25cell',
  border_bottom_height = '0.12cell',
  border_left_color = border_color,
  border_right_color = border_color,
  border_bottom_color = border_color,
  border_top_color = border_color,
}
config.enable_scroll_bar = false

config.enable_tab_bar = true
config.use_fancy_tab_bar = true
config.tab_max_width = 25
config.show_tab_index_in_tab_bar = false
config.switch_to_last_active_tab_when_closing_tab = true

config.keys = {
   { key = '[',     mods = 'ALT',     action = act.ActivateTabRelative(-1) },
   { key = ']',     mods = 'ALT',     action = act.ActivateTabRelative(1) },
   { key = '[',     mods = 'ALT|CTRL',action = act.MoveTabRelative(-1) },
   { key = ']',     mods = 'ALT|CTRL',action = act.MoveTabRelative(1) },
   { key = 'n',     mods = 'ALT',     action = act.SpawnWindow },
   { key = [[\]],   mods = 'ALT',     action = act.SplitHorizontal({ domain = 'CurrentPaneDomain' }), },
   { key = [[\]],   mods = 'ALT|CTRL',action = act.SplitVertical({ domain = 'CurrentPaneDomain' }), },
   { key = 'Enter', mods = 'ALT',     action = act.TogglePaneZoomState },
   { key = 'w',     mods = 'ALT',     action = act.CloseCurrentPane({ confirm = false }) },
   { key = 't',     mods = 'ALT',     action = act.SpawnTab('DefaultDomain') },
   { key = 'k',     mods = 'ALT',     action = act.ActivatePaneDirection('Up') },
   { key = 'j',     mods = 'ALT',     action = act.ActivatePaneDirection('Down') },
   { key = 'h',     mods = 'ALT',     action = act.ActivatePaneDirection('Left') },
   { key = 'l',     mods = 'ALT',     action = act.ActivatePaneDirection('Right') },
   { key = 'p',     mods = 'ALT',     action = act.PaneSelect({ alphabet = '1234567890', mode = 'SwapWithActiveKeepFocus' }), },
}

config.mouse_bindings = {
	{
		event = { Down = { streak = 1, button = "Right" } },
		mods = "NONE",
		action = wezterm.action_callback(function(window, pane)
			local has_selection = window:get_selection_text_for_pane(pane) ~= ""
			if has_selection then
				window:perform_action(act.CopyTo("ClipboardAndPrimarySelection"), pane)
				window:perform_action(act.ClearSelection, pane)
			else
				window:perform_action(act({ PasteFrom = "Clipboard" }), pane)
			end
		end),
	},
}

--wezterm.on('format-window-title', function()
--    return 'Wezterm'
--end)

return config
