-- Leader
vim.g.mapleader = " "

-- Keymaps
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]]) -- Delete selection
vim.keymap.set("x", "<leader>p", [["_dP]]) -- Move selection before cursor

vim.keymap.set({"n", "v"}, "<leader>y", [["+y]]) -- Yank selection to system clipboard
vim.keymap.set("n", "<leader>Y", [["+Y]]) -- Yank line to system clipboard

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- Move line down, comply with identation
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- Move line up, comply with identation

vim.keymap.set("n", "<C-d>", "<C-d>zz") -- Page down, cursor in center page
vim.keymap.set("n", "<C-u>", "<C-u>zz") -- Page up, cursor in center page

vim.keymap.set("n", "J", "mzJ`z") -- Collapse next line onto current line, place cursor at end

vim.keymap.set("n", "n", "nzzzv") -- Next search occurance, cursor in center page
vim.keymap.set("n", "N", "Nzzzv") -- Previous search occurance, cursor in center page
