require("config.lazy")

-- Local Variables --
local opt=vim.opt
local bo=vim.bo

-- Tab Sizes --
opt.tabstop=2
opt.softtabstop=2
opt.shiftwidth=4
opt.expandtab=true

-- Line Numbers --
vim.wo.number = true
vim.wo.relativenumber = true

-- Theming --
opt.background = "dark"
vim.cmd("colorscheme oxocarbon")

-- Keybinds --
vim.keymap.set("n", "<leader>w", ":w<CR>", { desc = "Save file" })

