-- Load lazy.nvim plugin configuration
require("config.lazy")

-- Line numbering settings
vim.opt.number = true                   -- Show absolute line numbers
vim.opt.relativenumber = true           -- Show relative line numbers
vim.opt.signcolumn = "yes"

-- Use Nerd Font-compatible symbols
vim.g.have_nerd_font = true
