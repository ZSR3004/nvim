return {

  { -- Bufferline
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("bufferline").setup({
        options = {
          mode = "buffers",
          separator_style = "slant",
        },
      })
      vim.keymap.set("n", "<C-l>", ":BufferLineCycleNext<CR>", { noremap = true, silent = true })
      vim.keymap.set("n", "<C-h>", ":BufferLineCyclePrev<CR>", { noremap = true, silent = true })
    end,
  },

}
