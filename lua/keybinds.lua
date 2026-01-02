--- Keybinds ---

-- File IO and Writing --
vim.keymap.set("n", "<leader>w", ":w<CR>", { desc = "Save file" })
vim.keymap.set("n", "<leader>q", ":q<CR>", { desc = "Close buffer" })
vim.keymap.set("i", "jk", "<Esc>", { desc = "Escape insert mode" })

-- Buffer Navigation --
vim.keymap.set("n", "<C-l>", ":bnext<CR>", { desc = "Move to next buffer" })
vim.keymap.set("n", "<C-l>", ":bprevious<CR>", { desc = "Move to previous buffer" })

-- Lazy Loader --
vim.keymap.set("n", "<leader><C-S-l>", ":Lazy<CR>", { desc = "Open Lazy loader interface" })
