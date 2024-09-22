return {
  {
    "kyazdani42/nvim-tree.lua",
    config = function()
      require("nvim-tree").setup {
        view = {
          side = "left",
          -- width = 30,
        },
        renderer = {
          highlight_opened_files = "name",
        },
        hijack_netrw = true,
      }
    end,
  },
}
