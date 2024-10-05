return {
  -- telescope
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require "plugins.configs.plugins.telescope"
    end,
  },
  -- nvim tree
  {
    "kyazdani42/nvim-tree.lua",
    config = function()
      require "plugins.configs.plugins.nvim-tree"
    end,
    event = { "BufWinEnter", "BufReadPre" },
  },
  -- buffer line
  {
    "akinsho/bufferline.nvim",
    event = "BufReadPre",
    config = function()
      require "plugins.configs.plugins.bufferline"
    end,
  },
  -- lauline
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require "plugins.configs.plugins.lualine"
    end,
    event = "VeryLazy",
  },
  -- lspconfig
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
  -- noice
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    config = function()
      require("plugins.configs.plugins.noice").setup()
    end,
    dependencies = {
      "MunifTanjim/nui.nvim",
    },
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "html-lsp",
        "css-lsp",
        "prettier",
        "gopls",
      },
    },
  },
}
