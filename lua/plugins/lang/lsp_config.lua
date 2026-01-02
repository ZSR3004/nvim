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
    build = ':TSUpdate',
    config = function (_, opts)
      local ts = require("nvim-treesitter")
      ts.setup()

      -- TODO: Automate language collection so that it just installs it by default.
      local filetypes = { 'python', 'c', 'rust', 'ocaml', 'markdown', 'tex'}
      vim.api.nvim_create_autocmd('FileType', {
          pattern = filetypes,
          callback = function()
          vim.treesitter.start()
          -- TODO: Fix folding behavior
          -- vim.wo[0][0].foldexpr = 'v:lua.vim.treesitter.foldexpr()'
          -- vim.wo[0][0].foldmethod = 'expr'
        end,
      })
    end
  },

}
