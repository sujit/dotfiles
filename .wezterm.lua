-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}


-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
-- config.color_scheme = 'AdventureTime'

-- and finally, return the configuration to wezterm
-- return config

-- return {
  -- color_scheme = "Catppuccin Frappe", -- or Macchiato, Frappe, Latte
-- }

-- config.color_scheme = "Catppuccin Frappe" -- or Macchiato, Frappe, Latte
config.color_scheme             = "Darcula (base16)"
config.font_size                = 15.0
config.freetype_load_target     = "Normal"
-- config.font                  = wezterm.font ("JetBrainsMono Nerd Font Mono", { weight = "Medium", italic = false })
-- config.font                  = wezterm.font ("Iosevka SS04", { weight = "Medium", italic = false })
config.font                     = wezterm.font ("OperatorMono Nerd Font", { weight = "Book", italic = false })
config.audible_bell             = 'Disabled'
config.enable_tab_bar           = true
config.enable_scroll_bar        = true

return config
