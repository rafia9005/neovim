local M = {}

function M.setup()
  require("noice").setup {
    lsp = {
      progress = {
        enabled = false,
      },
      signature = {
        enabled = false,
      },
      override = {
        ["vim.lsp.log"] = false,  -- Menyembunyikan log LSP
        ["vim.lsp.handlers"] = false,  -- Menyembunyikan handler LSP
      },
    },
    messages = {
      enabled = true,
    },
  }
end

return M

