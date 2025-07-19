return {
  {
    "neovim/nvim-lspconfig",
    version = "*",
    dependencies = {
      {

        "ms-jpq/coq_nvim",
        branch = "coq",
        dependencies = { { "ms-jpq/coq.artifacts", branch = "artifacts" } },
        config = function()
          vim.g.coq_settings = {

            auto_start = "shut-up", -- silent auto start
          }
        end,
      },

    },
    config = function()
      local coq = require("coq")
      local lspconfig = require("lspconfig")

      lspconfig.pyright.setup(coq.lsp_ensure_capabilities({}))

      require("lspconfig").lua_ls.setup({
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" },
            },
          },
        },
      })
    end,
  },
}

