return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("lualine").setup {
      options = {
        icons_enabled = true,
        -- theme = "auto",
        -- theme = "horizon",
        theme = "solarized_dark",
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
        global_status = true,
      },
      extensions = { "nvim-tree", "quickfix" },
    }
  end,
  event = "VeryLazy",
}
