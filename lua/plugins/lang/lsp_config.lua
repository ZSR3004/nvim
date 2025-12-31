return {

  { -- LSPConfig
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
    config = function()
      require("mason").setup()
      require("mason-lspconfig").setup({
        automatic_installation = true,
      })

      local installed_servers = require("mason-lspconfig").get_installed_servers()
      for _, server_name in ipairs(installed_servers) do
        local server_config = {}

        if server_name:match("lua") then
          server_config.settings = {
            Lua = { diagnostics = { globals = { 'vim' } } }
          }
        end

        vim.lsp.config(server_name, server_config)
      end
    end
  },

  { -- Treesitter
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    branch = 'main',
    build = ':TSUpdate',
    opts = {
      highlight = { enable = true, },
    },
    config = function()
      require("nvim-treesitter.config").setup(opts)
    end
  }

}
