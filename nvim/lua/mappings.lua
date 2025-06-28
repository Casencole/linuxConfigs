require "nvchad.mappings"

-- add yours here

vim.g.mapleader = " "

local map = vim.keymap.set
-- local rm  = vim.keycode.del

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "kj", "<ESC>")

-- move lines up and down 
map("n", "<S-k>", "ddkP", { desc = "Move line up"})
map("n", "<S-j>", "ddp", { desc = "Move line down"})

map("n", "<leader><leader>", "<cmd>Telescope find_files<cr>", { desc = "fuzzy find files in cwd" })

 -- ctrl s = save in any mode, result ends in normal mode
map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr><ESC>")

-- toggle spell check 
map("n", "<leader>sc", ":set spell!<CR>")

-- close tab instead of all of nvim (used to close out of all unsaved taps)
-- idk why this does not work? leader is space and pressing space x closes the current buffer
-- this mapping just deletes a character and moves the cursor
map("n", "<C-q>", "<leader>x")

-- Toggle Terminal
map({ "n", "t" }, "<A-t>", function()
    require("nvchad.term").toggle { pos = "float", id = "floatTerm" }
end)
