--- Keybinds ---

-- File IO and Writing --
vim.keymap.set("n", "<leader>w", ":w<CR>", { desc = "Save file" })
vim.keymap.set("n", "<leader>q", ":q<CR>", { desc = "Close buffer" })

-- Treesitter --
vim.keymap.set(
  "n", "<leader>d",
  function()
    vim.diagnostic.open_float(nil, { scope = 'line', focusable = true })
  end,
  { desc = "Open diagnostic float for current line" }
)
