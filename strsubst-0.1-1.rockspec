package = "strsubst"
version = "0.1-1"
source = {
  url = "git://git.pipapo.org/luastrsubst",
  tag = "v0.1",
}
description = {
  summary = "String substitution engine",
  detailed = [[
            Replacing expressions withing strings. An expression is defined as possibly nested
            sequence of text, operators and subexpressions in braces.
]],
  homepage = "http://git.pipapo.org/?p=luastrsubst",
  license = "GPL2+",
}
dependencies = {
  "lua >= 5.1, < 5.4"
}
build = {
  type = "builtin",
  modules = {
    strsubst = "strsubst.lua",
  }
}
