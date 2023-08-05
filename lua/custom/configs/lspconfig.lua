local config = require("plugins.configs.lspconfig")

local on_attach = config.on_attach
local capabilities = config.capabilities

local lspconfig = require("lspconfig")

lspconfig.pyright.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"python"},
})

lspconfig.tsserver.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "typescript", "typescriptreact", "typescript.tsx", "javascript", "javascriptreact" },
  root_dir = function() return vim.loop.cwd() end
})

lspconfig.csharp_ls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "cs", "razor", "cshtml" }
})

vim.diagnostic.config({
  virtual_text = false,
})
