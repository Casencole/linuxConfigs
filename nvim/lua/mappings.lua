require "nvchad.mappings"

-- add yours here

vim.g.mapleader = " "

local map = vim.keymap.set
-- local rm  = vim.keycode.del
local tele = require('telescope.builtin')

-- I need this mapping to function
map("i", "kj", "<ESC>")

-- ngl I don't think I ever use this
map("n", ";", ":", { desc = "CMD enter command mode" })

-- ctrl s = save in any mode, result ends in normal mode
map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr><ESC>")

-- Pasting over text won't replace your buffer 
map("x", "<leader>p", "\"_dP")

-- Move lines up and down 
-- TODO: does not work currently
-- map("n", "K", ":m '>+1<CR>gv=gv", { desc = "Move line up"})
-- map("n", "J", ":m '<-2<CR>gv=gv",  { desc = "Move line down"})
-- my move mapping are getting outclassed soon
map("n", "<S-k>", "ddkP", { desc = "Move line up"})
map("n", "<S-j>", "ddp",  { desc = "Move line down"})

----- Telescope keymaps ----- 
map("n", "<leader><leader>", tele.find_files, { desc = "fuzzy find files in cwd" })
map("n", "<leader>g",        tele.git_files,  { desc = "find git files" })

----- Toggles ----- 
-- Spell check 
map("n", "<leader>sc", ":set spell!<CR>")

-- Terminal
map({ "n", "t" }, "<A-t>", function()
    require("nvchad.term").toggle { pos = "float", id = "floatTerm" }
end)

-- close tab instead of all of nvim (used to close out of all unsaved taps)
-- idk why this does not work? leader is space and pressing space x closes the current buffer
-- this mapping just deletes a character and moves the cursor
-- map("n", "<C-q>", "<leader>x")
