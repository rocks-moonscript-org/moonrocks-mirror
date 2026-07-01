rockspec_format = "3.0"

package = "lua-tinyexpr"
version = "0.1.0-1"
source = {
   url = "git+https://github.com/thelowerlevels/lua-tinyexpr",
   tag = "v0.1.0-1"
}
description = {
   summary = "Fast, embeddable and safe expression parser in C",
   detailed = [[
      lua-tinyexpr is a tiny and safe Lua binding for tinyexpr. It is used primarily for calculators, parsing external expressions and easily performing complex calculations.

      An AST parser is used to divide the expression into chunks as a "tree" and evaluate it.
   ]],
   license = "zlib",
   homepage = "https://github.com/thelowerlevels/lua-tinyexpr",
   issues_url = "https://github.com/thelowerlevels/lua-tinyexpr/issues"
}
dependencies = {
  "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      te = {
         sources = {
            "src/lua_tinyexpr.c",
            "src/tinyexpr.c"
         }
      },
   }
}
