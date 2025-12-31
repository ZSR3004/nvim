local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local d = ls.dynamic_node
local sn = ls.snippet_node

s("def", {
    t("def "),
    i(1, "function_name"),
    t("("),
    i(2, "args"),
    t(") -> "),
    i(3, "None"),
    t(":"),
    t({"", "\traise NotImplementedError"})
})


