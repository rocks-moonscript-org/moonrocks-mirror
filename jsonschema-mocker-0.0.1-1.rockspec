package = "jsonschema-mocker"
version = "0.0.1-1"

source = {
  url = "git://github.com/vm-001/lua-jsonschema-mocker",
  branch = "main",
}

description = {
  summary = "JSON Schema mocker for Lua/LuaJIT",
  detailed = [[
    JSON Schema Mocker is a Lua library to generate mock data from a JSON Schema.
  ]],
  homepage = "https://github.com/vm-001/lua-jsonschema-mocker",
  license = "MIT"
}
dependencies = {
  "lua >= 5.0, < 5.5"
}

build = {
  type = "builtin",
  modules = {
    ["jsonschema-mocker"] = "src/mocker.lua",
    ["jsonschema-mocker.utils"] = "src/utils.lua",
    ["jsonschema-mocker.options"] = "src/options.lua",
    ["jsonschema-mocker.types.array"] = "src/types/array.lua",
    ["jsonschema-mocker.types.boolean"] = "src/types/boolean.lua",
    ["jsonschema-mocker.types.integer"] = "src/types/integer.lua",
    ["jsonschema-mocker.types.null"] = "src/types/null.lua",
    ["jsonschema-mocker.types.number"] = "src/types/number.lua",
    ["jsonschema-mocker.types.object"] = "src/types/object.lua",
    ["jsonschema-mocker.types.string"] = "src/types/string.lua",
  },
}
