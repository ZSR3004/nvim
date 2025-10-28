return {
  { -- LSP Config
    "neovim/nvim-lspconfig",
  },

  { -- Mason
    "mason-org/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },

  { -- Mason LSP Config
    "mason-org/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "pyright" }
      })
    end
  },
}
