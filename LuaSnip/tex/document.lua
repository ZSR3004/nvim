local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local d = ls.dynamic_node
local sn = ls.snippet_node

return {

  -- Root File Marker
  s("inp", {
    t({"%! TEX root = "}),
    i(1, "../main.tex")
  })

}
