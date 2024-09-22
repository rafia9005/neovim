---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "tokyonight",
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
  enabled = true,
}

return M
