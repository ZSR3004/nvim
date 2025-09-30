return {

  { -- Lualine
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('lualine').setup {
        options = {
          icons_enabled = true,
          theme = 'iceberg_dark',
          component_separators = { left = '', right = '' },
          section_separators = { left = '', right = '' },
          disabled_filetypes = {
            statusline = {},
            winbar = {},
          },
          ignore_focus = {},
          always_divide_middle = true,
          always_show_tabline = true,
          globalstatus = false,
          refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000,
            refresh_time = 16, -- ~60fps
            events = {
              'WinEnter',
              'BufEnter',
              'BufWritePost',
              'SessionLoadPost',
              'FileChangedShellPost',
              'VimResized',
              'Filetype',
              'CursorMoved',
              'CursorMovedI',
              'ModeChanged',
            },
          },
        },
        sections = {
          lualine_a = { 'mode' },
          lualine_b = { 'branch', 'diff', 'diagnostics' },
          lualine_c = { 'filename' },
          lualine_x = { 'encoding', 'fileformat', 'filetype' },
          lualine_y = { 'progress' },
          lualine_z = { 'location' },
        },
        inactive_sections = {
          lualine_a = {},
          lualine_b = {},
          lualine_c = { 'filename' },
          lualine_x = { 'location' },
          lualine_y = {},
          lualine_z = {},
        },
        tabline = {},
        winbar = {},
        inactive_winbar = {},
        extensions = {},
      }
    end,
  },

  { -- Oxocarbon Theme
    "nyoom-engineering/oxocarbon.nvim"
  },

  { -- Conceal
    "Jxstxs/conceal.nvim",
    config = function()
      local conceal = require("conceal")

      conceal.setup({
        ["latex"] = {
          enabled = true,
          keywords = {
            ["\\sat"]     = { conceal = "⊨" },
            ["\\unsat"]   = { conceal = "⊭" },
            ["\\neg"]     = { conceal = "¬" },
            ["\\not"]     = { conceal = "¬" },
            ["\\land"]    = { conceal = "∧" },
            ["\\lor"]     = { conceal = "∨" },
            ["\\to"]      = { conceal = "→" },
            ["\\iff"]     = { conceal = "↔" },
            ["\\forall"]  = { conceal = "∀" },
            ["\\exists"]  = { conceal = "∃" },
            ["\\in"]      = { conceal = "∈" },
            ["\\notin"]   = { conceal = "∉" },
            ["\\subset"]  = { conceal = "⊂" },
            ["\\subseteq"]= { conceal = "⊆" },
            ["\\supset"]  = { conceal = "⊃" },
            ["\\supseteq"]= { conceal = "⊇" },
            ["\\cup"]     = { conceal = "∪" },
            ["\\cap"]     = { conceal = "∩" },
            ["\\setminus"]= { conceal = "∖" },
            ["\\emptyset"]= { conceal = "∅" },
            ["\\mathbb{N}"]= { conceal = "ℕ" },
            ["\\mathbb{Z}"]= { conceal = "ℤ" },
            ["\\mathbb{Q}"]= { conceal = "ℚ" },
            ["\\mathbb{R}"]= { conceal = "ℝ" },
            ["\\mathbb{C}"]= { conceal = "ℂ" },
            ["\\rar"]     = { conceal = "→" },
            ["\\lrar"]    = { conceal = "↔" },
            ["\\ldots"]   = { conceal = "…" },
            ["\\cdots"]   = { conceal = "⋯" },
            ["\\vdots"]   = { conceal = "⋮" },
            ["\\ddots"]   = { conceal = "⋱" },
            -- Greek
            ["\\ga"] = { conceal = "α" }, ["\\gA"] = { conceal = "Α" },
            ["\\gb"] = { conceal = "β" }, ["\\gB"] = { conceal = "Β" },
            ["\\gg"] = { conceal = "γ" }, ["\\gG"] = { conceal = "Γ" },
            ["\\gd"] = { conceal = "δ" }, ["\\gD"] = { conceal = "Δ" },
            ["\\ge"] = { conceal = "ε" }, ["\\gE"] = { conceal = "Ε" },
            ["\\gz"] = { conceal = "ζ" }, ["\\gZ"] = { conceal = "Ζ" },
            ["\\gh"] = { conceal = "η" }, ["\\gH"] = { conceal = "Η" },
            ["\\gt"] = { conceal = "θ" }, ["\\gT"] = { conceal = "Θ" },
            ["\\gi"] = { conceal = "ι" }, ["\\gI"] = { conceal = "Ι" },
            ["\\gk"] = { conceal = "κ" }, ["\\gK"] = { conceal = "Κ" },
            ["\\gl"] = { conceal = "λ" }, ["\\gL"] = { conceal = "Λ" },
            ["\\gm"] = { conceal = "μ" }, ["\\gM"] = { conceal = "Μ" },
            ["\\gn"] = { conceal = "ν" }, ["\\gN"] = { conceal = "Ν" },
            ["\\gx"] = { conceal = "ξ" }, ["\\gX"] = { conceal = "Ξ" },
            ["\\go"] = { conceal = "ο" }, ["\\gO"] = { conceal = "Ο" },
            ["\\gp"] = { conceal = "π" }, ["\\gP"] = { conceal = "Π" },
            ["\\gr"] = { conceal = "ρ" }, ["\\gR"] = { conceal = "Ρ" },
            ["\\gs"] = { conceal = "σ" }, ["\\gS"] = { conceal = "Σ" },
            ["\\gu"] = { conceal = "υ" }, ["\\gU"] = { conceal = "Υ" },
            ["\\gf"] = { conceal = "φ" }, ["\\gF"] = { conceal = "Φ" },
            ["\\gc"] = { conceal = "χ" }, ["\\gC"] = { conceal = "Χ" },
            ["\\gq"] = { conceal = "ψ" }, ["\\gQ"] = { conceal = "Ψ" },
            ["\\gw"] = { conceal = "ω" }, ["\\gW"] = { conceal = "Ω" },
          },
        },
      })

      conceal.generate_conceals()

      vim.keymap.set("n", "<leader>tc", function()
        conceal.toggle_conceal()
      end, { silent = true, desc = "Toggle Conceal" })

      vim.opt.conceallevel = 2
    end,
  },

}
