require "nvchad.options"

local o = vim.o
o.cursorlineopt ='both'

-- Show whitespace
o.listchars = "tab:> ,trail:∙,multispace:∙,nbsp:+"
o.list = true

-- Tab size
o.shiftwidth = 4
o.tabstop = 4
o.expandtab = true

-- Lua Configuration
vim.api.nvim_create_autocmd("FileType", {
    pattern = "lua",
    callback = function ()
        vim.opt_local.shiftwidth = 2
        vim.opt_local.tabstop = 2
    end
})

-- C# Configuration
vim.api.nvim_create_autocmd("FileType", {
    pattern = "cs",
    callback = function ()
        vim.opt_local.cc = { 100 }
    end
})
