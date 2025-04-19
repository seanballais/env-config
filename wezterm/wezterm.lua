local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.default_prog = { 'pwsh.exe' }

config.color_scheme = 'Dark+'
config.font = wezterm.font('CaskaydiaCove Nerd Font', {
  weight='Bold',
  stretch='Normal',
  style='Normal'
})
config.font_size = 10.5

config.default_cursor_style = 'BlinkingBar'
config.animation_fps = 1
config.cursor_blink_ease_in = 'Linear'
config.cursor_blink_ease_out = 'Linear'

return config
