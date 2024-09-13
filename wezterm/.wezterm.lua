-- Pull in the wezterm API
local wezterm = require 'wezterm'
local act = wezterm.action

-- This will hold the configuration.
local config = wezterm.config_builder()

config.font = wezterm.font_with_fallback {
    'CaskaydiaCoveNerdFont', 'Cascadia Code NF'
}
config.font_size = 18

config.color_scheme = 'Catppuccin Mocha'
config.window_close_confirmation = 'NeverPrompt'
config.enable_tab_bar = false
config.window_decorations = "TITLE | RESIZE"
config.window_frame = {
  border_left_width = '0.25cell',
  border_right_width = '0.25cell',
  border_bottom_height = '0.12cell',
  border_left_color = '#555',
  border_right_color = '#555',
  border_bottom_color = '#555',
  border_top_color = '#555',
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

wezterm.on('format-window-title', function()
    return 'Wezterm'
end)

-- and finally, return the configuration to wezterm
return config
