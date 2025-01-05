require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("n", "<S-j>", "5j", { desc = "Move cusor 5 lines down" })
map("n", "<S-k>", "5k", { desc = "Move cusor 5 lines up" })
map("n", "<S-h>", "<home>", { desc = "Move to beginning of line" })
map("n", "<S-l>", "<end>", { desc = "Move to end of line" })

map("i", "jk", "<ESC>")

map("t", "<Esc>", "<C-\\><C-N>")
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

map("n", "<leader>d", function ()
  vim.lsp.buf.hover()
end, { desc = "LSP Hover" })

-- Setup mappings for toggling terminal windows.
-- For more information see :h nvui.term
map({ "n", "t" }, "<C-`>", function()
  require("nvchad.term").toggle { pos = "sp", size = 0.3, id = "toggleTerm" }
end)

-- Formatting files
map("n", "ff", function ()
  vim.lsp.buf.format()
end)

-- Show code actions
map("n", "<leader>ca", function ()
  vim.lsp.buf.code_action()
end)

map("n", "<leader>u", function()
  require("telescope.builtin").lsp_references()
end)

