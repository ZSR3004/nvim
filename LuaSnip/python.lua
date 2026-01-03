local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local d = ls.dynamic_node
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local rep = require("luasnip.extras").rep

return {
  s({trig="def", dscr="Creates an empty function that raises a 'NotImplementedError'", snippetType='autosnippet'},
    fmta(
      [[
      def <>(<>) ->> <>:
        """
        <>
        """
        raise NotImplementedError

      ]],
      {
        i(1, "function_name"),
        i(2),
        i(3, "None"),
        i(4),
      }
    )
  ),
}
