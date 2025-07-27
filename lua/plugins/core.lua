return {

  { -- TreeSitter
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = {
          "lua",
          "python",
          "bash",
          "c"
        },
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false,
        },
        indent = {
          enable = true,
        },
      })
    end,
  },

  { -- Indent Blankline
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    ---@module "ibl"
    ---@type ibl.config
    opts = {},
  },

  { -- Autopairs
      'windwp/nvim-autopairs',
      event = "InsertEnter",
      config = true
  },

  { -- Comment
     'numToStr/Comment.nvim',
     version = "*", 
     dependencies = 'nvim-tree/nvim-web-devicons'
  },

  { -- LuaSnip
    "L3MON4D3/LuaSnip",
    version = "v2.*",
    build = "make install_jsregexp"
  },

  { -- COQ
    "neovim/nvim-lspconfig", 
    lazy = false,
    dependencies = {
      { "ms-jpq/coq_nvim", branch = "coq" },
      { "ms-jpq/coq.artifacts", branch = "artifacts" },
      { 'ms-jpq/coq.thirdparty', branch = "3p" }
    },
    init = function()
      vim.g.coq_settings = {
        auto_start = true,
        keymap = {recommended = false,}, 
      }
    end,
    config = function()
        vim.api.nvim_set_keymap('i', '<Esc>', [[pumvisible() ? "\<C-e><Esc>" : "\<Esc>"]], { expr = true, silent = true })
        vim.api.nvim_set_keymap('i', '<C-c>', [[pumvisible() ? "\<C-e><C-c>" : "\<C-c>"]], { expr = true, silent = true })
        vim.api.nvim_set_keymap('i', '<BS>', [[pumvisible() ? "\<C-e><BS>" : "\<BS>"]], { expr = true, silent = true })
        vim.api.nvim_set_keymap(
          "i",
          "<CR>",
          [[pumvisible() ? (complete_info().selected == -1 ? "\<C-e><CR>" : "\<C-y>") : "\<CR>"]],
          { expr = true, silent = true }
        )
        vim.api.nvim_set_keymap('i', '<C-j>', [[pumvisible() ? "\<C-n>" : "\<Tab>"]], { expr = true, silent = true })
        vim.api.nvim_set_keymap('i', '<C-k>', [[pumvisible() ? "\<C-p>" : "\<BS>"]], { expr = true, silent = true })
    end,
  }

}
