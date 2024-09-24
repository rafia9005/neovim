return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.8",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("telescope").setup {
      defaults = {
        prompt_prefix = " ",
        selection_caret = "➜ ",
        layout_strategy = "flex",
        layout_config = {
          horizontal = { width = 0.75, height = 0.95, preview_width = 0.6 },
          vertical = { width = 0.9, height = 0.95, preview_height = 0.5 },
          flex = { flip_columns = 130 },
        },
        sorting_strategy = "ascending",
        file_ignore_patterns = { ".git/", "node_modules/", "*.o", "*.out", "*.class" },
        color_devicons = true,
      },
      pickers = {
        find_files = {
          theme = "dropdown",
          previewer = false,
          hidden = true,
        },
        live_grep = {
          theme = "dropdown",
          additional_args = function(opts)
            return { "--hidden" }
          end,
        },
        buffers = {
          theme = "ivy",
          sort_lastused = true,
        },
        help_tags = {
          theme = "dropdown",
        },
      },
    }

    local builtin = require "telescope.builtin"
    vim.api.nvim_set_keymap("n", "<leader>ff", "<cmd>lua builtin.find_files()<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("n", "<leader>fg", "<cmd>lua builtin.live_grep()<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("n", "<leader>fb", "<cmd>lua builtin.buffers()<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("n", "<leader>fh", "<cmd>lua builtin.help_tags()<CR>", { noremap = true, silent = true })
  end,
}
