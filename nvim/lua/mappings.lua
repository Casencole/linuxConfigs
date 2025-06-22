require "nvchad.mappings"

-- add yours here

vim.g.mapleader = " "

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "kj", "<ESC>")

-- move lines up and down 
map("n", "<S-k>", "ddkP", { desc = "Move line up"})
map("n", "<S-j>", "ddp", { desc = "Move line down"})

map("n", "<leader><leader>", "<cmd>Telescope find_files<cr>", { desc = "fuzzy find files in cwd" })

 -- ctrl s = save in any mode, result ends in normal mode
map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr><ESC>")
