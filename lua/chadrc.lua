---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "solarized-osaka",
  statusline = {
    theme = "vscode",
    separator_style = "round",
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
