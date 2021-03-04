package = "graphql-parser"
version = "1.0.1-1"
source = {
   url = "git://github.com/samngms/lua-graphql-parser",
   tag = "1.0.1",
}
description = {
   summary = "A graphQL parser implemented in Lua",
   homepage = "https://github.com/samngms/lua-graphql-parser",
   license = "MIT"
}
dependencies = {
  "lua >= 5.1",
}
build = {
   type = "builtin",
   modules = {
      ["graphql-parser"] = "src/graphql-parser.lua",
      ["graphql-parser.clazz"] = "src/graphql-parser/clazz.lua",
      ["graphql-parser.lexer"] = "src/graphql-parser/lexer.lua",
   },
}
