require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
local builtin = require "telescope.builtin"

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
-- Mapping untuk menjalankan perintah Prettier
vim.api.nvim_set_keymap("n", "<Leader>f", "<Plug>(prettier-format)", { silent = true })
map("n", "<C-q>", ":bd<CR>", { desc = "Close buffer", silent = true })
map("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
map("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
map("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
map("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
map("n", "<Tab>", ":BufferLineCycleNext<CR>", { desc = "Next tab" })
-- map("n", "<Space>e", ":Explore .<CR>", { noremap = true, silent = true, desc = "Toggle Nvim Tree" })
