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

  s({trig="md", dscr="Creates an empty class method that raises a 'NotImplementedError'", snippetType='autosnippet'},
    fmta(
      [[
      def <>(self, <>) ->> <>:
          """
          <>
          """
          raise NotImplementedError

      ]],
      {
        i(1, "method_name"),
        i(2),
        i(3, "None"),
        i(4),
      }
    )
  ),

  s({trig="rg", dscr="Python for loop."},
    fmta (
      [[
        for <> in range(<>, <>):
            <>
      ]],
      {i(1, "i"), i(2, "start"), i(3, "end"), i(0)}
    )
  ),

  s({trig="if", dscr="Creates an if branch."},
    fmta (
      [[
        if <>:
            <>
      ]],
      {i(1, "condition"), i(2, "pass")}
    )
  ),

 s({trig="eif", dscr="Creates an elif branch."},
    fmta (
      [[
        elif <>:
            <>
      ]],
      {i(1, "condition"), i(2, "pass")}
    )
  ),

  s({trig="else", dscr="Creates an else branch."},
    fmta (
      [[
        else:
            <>
      ]],
      {i(1)}
    )
  ),

}
