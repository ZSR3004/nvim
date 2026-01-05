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

  s({trig="fn", dscr="Creates a not-implemented function."},
    fmta (
      [[
        fn <>(<>) ->> <> {
            todo!()
        }

      ]],
      {i(1, "function_name"), i(2, "params"), i(3, "returns")}
    )
  ),

  s({trig="struct", dscr="Creates a struct."},
    fmta (
      [[
        struct <> {
            <>
        } 
      ]],
      {i(1), i(2)}
    )
  ),

  s({trig="enum", dscr="Creates an enum."},
    fmta (
      [[
        enum <> {
            <>
        } 
      ]],
      {i(1), i(2)}
    )
  ),

  s({trig="md", dscr="Creates a not-implemented method."},
    fmta (
      [[
        fn <>(&self, <>) ->> <> {
          todo!()
        }

      ]],
      {i(1, "method_name"), i(2, "params"), i(3, "returns")}
    )
  ),

  s({trig="if", dscr="Creates an if branch."},
    fmta (
      [[
        if <> {
            <>
        }
      ]],
      {i(1, "cond"), i(0)}
    )
  ),

  s({trig="eif", dscr="Creates an else-if branch."},
    fmta (
      [[
        else if <> {
            <>
        }
      ]],
      {i(1, "cond"), i(0)}
    )
  ),

  s({trig="else", dscr="Creates an else branch."},
    fmta (
      [[
        else {
            <>
        }
      ]],
      {i(1)}
    )
  ),

  s({trig="while", dscr="Creates a while loop."},
    fmta (
      [[
        while <> {
            <>
        }
      ]],
      {i(1, "cond"), i(2)}
    )
  ),

  s({trig="for", dscr="Creates a for loop."},
    fmta (
      [[
        for <> (<>..<>) {
            <>
        }
      ]],
      {i(1, "i"), i(2, "start"), i(3, "end"), i(4)}
    )
  ),

}
