return {

  { -- Transparent Background
    "xiyaowong/transparent.nvim",
  },

  { -- Nvim Notify
    "rcarriga/nvim-notify",
    opts = {
      background_colour = "#000000",
      render = "wrapped-compact",
    },
    config = function (_, opts)
      local notify = require("notify")
      notify.setup(opts)
      vim.notify = notify

      vim.keymap.set("n", "<leader>fn", ":Telescope notify<CR>", { desc = "Telescope notifications" })
    end
  },

}
