return {
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate", 
    config = function()

      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "pyright",
        },
        automatic_installation = true,
      })
    end,
  },
  {
    "jay-babu/mason-null-ls.nvim",
    dependencies = {
      "williamboman/mason.nvim",
      "nvimtools/none-ls.nvim",
    },
    config = function()
      require("mason-null-ls").setup({
        ensure_installed = {
          "black",
          "pylint",
          "isort",
          "autopep8"
        },
        automatic_installation = true,
      })
    end,
  },
}
