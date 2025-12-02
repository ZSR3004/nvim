--- Neovim Init ---

-- Local Variables --
local opt=vim.opt
local bo=vim.bo

-- Lazy Package Manager Setup --
require("config.lazy")

-- Tab Sizes --
opt.tabstop=2
opt.softtabstop=2
opt.shiftwidth=4
opt.expandtab=true

-- Line Numbers --
vim.wo.number = true
vim.wo.relativenumber = true

-- Theming --
vim.cmd("colorscheme oxocarbon")

-- Keybinds --
require("keybinds")
