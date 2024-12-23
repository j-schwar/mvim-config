return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- {
  --  "nvim-treesitter/nvim-treesitter",
  --  opts = {
  --    ensure_installed = {
  --      "vim", "lua", "vimdoc",
  --      "html", "css"
  --    },
  --  },
  -- },

  {
    "kkoomen/vim-doge",
    lazy = false,
  },

  {
    "Issafalcon/lsp-overloads.nvim",
    lazy = false,
  },
}
