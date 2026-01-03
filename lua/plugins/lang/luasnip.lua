return {

  { --LuaSnip
    "L3MON4D3/LuaSnip",
    version = "v2.*",
    build = "make install_jsregexp",
    opts = {
      enabled_autosnippets = true,
    },
    config = function (_, opts)
      require("luasnip").config.set_config(opts)
    end
  },

}
