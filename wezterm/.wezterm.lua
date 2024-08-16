-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

config.font = wezterm.font 'Cascadia Code NF'
config.font_size = 18

config.color_scheme = 'Catppuccin Mocha'

-- and finally, return the configuration to wezterm
return config
