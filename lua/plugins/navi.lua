return {
  
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons",
    },
    lazy = false,
    keys = {
     { "<leader>e", "<cmd>Neotree toggle<cr>", desc = "Toggle Neo-tree" },
     { "<leader>fe", "<cmd>Neotree toggle position=float<cr>", desc = "Neo-tree Float" },
   }
  }

}
