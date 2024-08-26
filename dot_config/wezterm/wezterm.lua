local wezterm = require("wezterm")

local config = wezterm.config_builder()
config.default_cwd = "~"

-- Theme
config.color_scheme = "Gruvbox dark, soft (base16)"

-- Padding
config.window_padding = {}
config.window_padding.left = "0.5cell"
config.window_padding.right = "0.5cell"
config.window_padding.top = "0.2cell"
config.window_padding.bottom = "0.2cell"

-- config.tab_bar_at_bottom = true
config.enable_tab_bar = false

-- Window
config.initial_rows = 32
config.initial_cols = 120

-- Window appearance
config.window_decorations = "RESIZE"
config.window_background_opacity = 0.925

-- Font
config.font = wezterm.font("JetBrains Mono NL", { weight = "Bold", italic = false })
config.font_size = 13
config.line_height = 1.175
config.front_end = "OpenGL"
config.freetype_load_target = "Light"
config.freetype_render_target = "HorizontalLcd"
config.cell_width = 0.9

return config
