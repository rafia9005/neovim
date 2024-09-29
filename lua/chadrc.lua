---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "solarized_osaka",
  statusline = {
    theme = "minimal",
    separator_style = "default",
    enabled = false,
  },
  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
  },
}

M.ui.tabufline = {
  enabled = false,
}

return M
