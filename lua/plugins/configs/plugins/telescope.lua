require("telescope").setup {
  defaults = {
    prompt_prefix = "> ",
    selection_caret = "➜ ",
    layout_strategy = "horizontal",
    layout_config = {
      horizontal = { width = 0.75, preview_width = 0.5 },
      vertical = { width = 0.9, preview_height = 0.5 },
    },
    sorting_strategy = "descending",
    file_ignore_patterns = { ".git/", "node_modules/", "*.o", "*.out", "*.class" },
    color_devicons = true,
  },
  pickers = {
    find_files = {
      previewer = true,
      hidden = false,
    },
    live_grep = {},
    buffers = {
      sort_lastused = false,
    },
    help_tags = {},
  },
}

