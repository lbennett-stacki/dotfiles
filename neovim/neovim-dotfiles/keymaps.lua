vim.g.mapleader = " "

vim.keymap.set("n", "<Up>", "<Nop>", { desc = "Disable up arrow" })
vim.keymap.set("n", "<Down>", "<Nop>", { desc = "Disable down arrow" })
vim.keymap.set("n", "<Left>", "<Nop>", { desc = "Disable left arrow" })
vim.keymap.set("n", "<Right>", "<Nop>", { desc = "Disable right arrow" })

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]], { desc = "Delete selection" })
vim.keymap.set("x", "<leader>p", [["_dP]], { desc = "Move selection before cursor" })

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Yank selection to system clipboard" })
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "Move line to system clipboard" })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move line down, comply with identation" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move line up, comply with identation" })

vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Page down, cursor in center page" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Page up, cursor in center page" })

vim.keymap.set("n", "J", "mzJ`z", { desc = "Collapse next line onto current line, place cursor at end" })

vim.keymap.set("n", "n", "nzzzv", { desc = "Next search occurance, cursor in center page" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Previous search occurance, cursor in center page" })

vim.keymap.set("n", "<leader>dd", function()
	vim.diagnostic.open_float()
end, { noremap = true, desc = "Open diagnostic float" })

vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
