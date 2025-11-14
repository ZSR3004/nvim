return {

  { -- Treesitter
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    build = { ":TSUpdate", },
  },

  { -- LSPConfig
    "neovim/nvim-lspconfig",
    lazy = true,
  },

  { -- Mason
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },

  { -- Mason-LSPConfig
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
        "mason-org/mason.nvim",
        "neovim/nvim-lspconfig",
    },
  },

}
