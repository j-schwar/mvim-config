-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

-- EXAMPLE
local servers = { "html", "cssls", "rust_analyzer", "csharp_ls", "sourcekit" }
local nvlsp = require "nvchad.configs.lspconfig"

local function on_attach(client, bufnr)
  nvlsp.on_attach()

  if client.server_capabilities.signatureHelpProvider then
    require("lsp-overloads").setup(client, { })

    vim.api.nvim_buf_set_keymap(bufnr, "n", "<C-o>", "<cmd>:LspOverloadsSignature<CR>", { noremap = true, silent = true })
    vim.api.nvim_buf_set_keymap(bufnr, "i", "<C-o>", "<cmd>:LspOverloadsSignature<CR>", { noremap = true, silent = true })
  end
end

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    -- on_attach = nvlsp.on_attach,
    on_attach = on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

-- configuring single server, example: typescript
-- lspconfig.ts_ls.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }
