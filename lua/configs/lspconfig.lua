local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = {
  "html",
  "cssls",
  "clangd",
  "gopls",
  "glint",
  "pyright",
  "intelephense",
  "svlangserver",
  "intelephense",
  "gopls",
  -- "stimulus-language-server",
  -- "vue-language-server"
  -- "svelte-language-server",
}

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
end

lspconfig.prismals.setup {
  cmd = { "prisma-language-server", "--stdio" },
  filetypes = { "prisma" },
  settings = {
    prisma = {
      prismaFmtBinPath = "",
    },
  },
}

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

lspconfig.astro.setup {
  cmd = { "astro-language-server", "--studio" },
  filetypes = { "astro" },
}

-- typescript
lspconfig.tsserver.setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
}
