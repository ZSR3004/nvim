local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local d = ls.dynamic_node
local sn = ls.snippet_node

s("fun", {
  t("function"),
  i(1, " "),
  t("("),
  i(2, ""),
  t(")", "end"),
})
