return {

  { -- Neo-Tree
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
  },

  { -- Telescope
    'nvim-telescope/telescope.nvim',
    version = "*",
    dependencies = {
        'nvim-lua/plenary.nvim',
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
        "benfowler/telescope-luasnip.nvim",
    },

    opts = function ()
      local actions = require('telescope.actions')
      return {
        defaults = {
          mappings = {
            i = {
              -- Buffer Selection --
              ["<C-j>"] = "move_selection_next",
              ["<C-k>"] = "move_selection_previous",

              -- Buffer Deletion --
              ["<C-w>"] = actions.delete_buffer,
            },
          },
        },
      }
    end,

    config = function (_, opts)
      require('telescope').setup(opts)
      local builtin = require('telescope.builtin')
      -- Open Telescopes --
      vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
      vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
      vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
      vim.keymap.set('n', '<leader>fk', ':Telescope keymaps<CR>', { desc = 'Telescope keybinds' })
      vim.keymap.set('n', '<leader>fs', ':Telescope luasnip', { desc = 'Telescopes snippets' })
    end,
  },

}
