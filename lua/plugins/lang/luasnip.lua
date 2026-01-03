return {

  { --LuaSnip
    "L3MON4D3/LuaSnip",
    version = "v2.*",
    build = "make install_jsregexp",
    lazy = false,
    opts = {
      enabled_autosnippets = true,
      store_selection_keys = "<Tab>",
      update_events = 'TextChanged,TextChangedI',
    },
    config = function (_, opts)
      require("luasnip").config.set_config(opts)
      require("luasnip.loaders.from_lua").load({paths = "~/.config/nvim/LuaSnip/"})
    end
  },

}
