require("nvim-tree").setup {
  view = {
    width = 30,
    side = "left",
  },
  renderer = {
    highlight_opened_files = "none",
    icons = {
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
      },
      glyphs = {
        default = "",
        folder = {
          default = "",
          open = "",
        },
      },
    },
  },
  hijack_netrw = true,
}

