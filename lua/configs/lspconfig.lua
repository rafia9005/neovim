local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = {
  "html",
  "cssls",
  "gopls",
  "glint",
  "pyright",
  "intelephense",
  -- Uncomment these if you want to use them
  -- "stimulus-language-server",
  -- "vue-language-server",
  -- "svelte-language-server",
}

-- Setup LSP servers with default config
for _, lsp in ipairs(servers) do
  local ok, err = pcall(function()
    lspconfig[lsp].setup {
      on_attach = on_attach,
      on_init = on_init,
      capabilities = capabilities,
    }
  end)

  if not ok then
    print("Error setting up LSP for " .. lsp .. ": " .. err)
  end
end

-- Prisma Language Server
lspconfig.prismals.setup {
  cmd = { "prisma-language-server", "--stdio" },
  filetypes = { "prisma" },
  settings = {
    prisma = {
      prismaFmtBinPath = "",
    },
  },
}

-- Svelte Language Server
lspconfig.svelte.setup {
  cmd = { "svelteserver", "--stdio" },
  filetypes = { "svelte" },
  settings = {
    svelte = {
      plugin = {
        svelte = {
          compilerWarnings = {
            ["a11y-missing-attribute"] = "ignore",
            ["a11y-unknown-aria-attribute"] = "ignore",
          },
        },
      },
    },
  },
}

-- Astro Language Server
lspconfig.astro.setup {
  cmd = { "astro-language-server", "--stdio" },
  filetypes = { "astro" },
}

-- Rust Analyzer
lspconfig.rust_analyzer.setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
  settings = {
    ["rust-analyzer"] = {
      cargo = {
        features = "all",
      },
      procMacro = {
        enable = true,
      },
    },
  },
}

-- TypeScript Language Server
lspconfig.tsserver.setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
}

