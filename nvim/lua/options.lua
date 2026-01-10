require "nvchad.options"

-- add yours here!

-- local O = vim.opt
-- O.cursorlineopt ='both' -- to enable cursorline!

-- So if I have a lsp for a given language this line highlight errors red
vim.cmd.highlight({ "Error", "guibg=red" })
vim.cmd.highlight({ "link", "Warning", "Error" })

-- Vim Settings
vim.opt.relativenumber = true
vim.opt.spelllang = "en"

-- Tab indent
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.wrap = false

-- don't think this does anything for me
vim.opt.termguicolors = true

vim.opt.scrolloff = 10
vim.opt.colorcolumn = "80"

vim.opt.foldmethod = "indent"
vim.opt.foldlevelstart = 99


-- Spell Check highlight
-- Moved spell check to mappings as a toggle instead of default
-- vim.api.nvim_command("hi clear SpellBad")
-- vim.api.nvim_command("hi SpellBad cterm=underline")
-- vim.api.nvim_command("hi SpellBad gui=undercurl"

-- If I wnated to the background to be transparent and not other things 
-- vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
-- vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
