package = "LunaQuery"
version = "0.9-2"
description = {
  summary = "Fluent, Linq-Style Query Expressions for Lua",
  detailed = [[
Use fluent syntax to query datasets like directory trees, XML, and JSON objects

Differences reflecting lua's table type: 
  'toList' and 'toArray' produce the same result, 'cast' is not implemented, and 
  'toDictionary' and 'toHashSet' don't take an equality comparer param

'repeat' is renamed 'repeatElement' to avoid collision with lua's repeat keyword
  ]],
  license = "MIT",
  homepage = "https://github.com/jleopore/LunaQuery"
}

dependencies = {
  "lua >= 5.1"
}

source = {
  url = "git://github.com/jleopore/LunaQuery.git",
  tag = "v0.9"
}

build = {
  type = "builtin",
  modules = {
    LunaQuery = "LunaQuery.lua"
  }
}