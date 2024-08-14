return {
  "sainnhe/gruvbox-material",
  lazy = false,
  priority = 1000,
  config = function()
    vim.g.gruvbox_material_background = "soft"
    vim.g.gruvbox_material_foreground = "mix"
    vim.g.gruvbox_material_statusline_style = "original"
    vim.g.gruvbox_material_enable_italic = true
    vim.cmd.colorscheme("gruvbox-material")
  end,
}
