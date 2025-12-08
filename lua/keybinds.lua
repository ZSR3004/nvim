--- Keybinds ---

-- File IO and Writing --
vim.keymap.set("n", "<leader>w", ":w<CR>", { desc = "Save file" })
vim.keymap.set("n", "<leader>q", ":q<CR>", { desc = "Close buffer" })

-- Buffers --
vim.keymap.set("n", "<leader>t", ":terminal<CR>", { desc = "Open terminal" })
vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]], { desc = "Exit insert mode in terminal" })

-- Treesitter --
vim.keymap.set(
  "n", "<leader>d",
  function()
    vim.diagnostic.open_float(nil, { scope = 'line', focusable = true })
  end,
  { desc = "Open diagnostic float for current line" }
)
