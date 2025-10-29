return {
  { -- Mason
    "mason-org/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },

  { -- Mason LSP Config
    "mason-org/mason-lspconfig.nvim",
  },

  { -- Treesitter
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    build = ":TSUpdate",
  },

  { -- LSP Config
    "neovim/nvim-lspconfig",
  },
}
