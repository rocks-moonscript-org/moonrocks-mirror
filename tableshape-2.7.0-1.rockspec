package = "tableshape"
version = "2.7.0-1"

source = {
  url = "git://github.com/leafo/tableshape.git",
  branch = "v2.7.0"
}

description = {
  summary = "Test the shape or structure of a Lua table",
  homepage = "https://github.com/leafo/tableshape",
  license = "MIT"
}

dependencies = {
  "lua >= 5.1"
}

build = {
  type = "builtin",
  modules = {
    ["tableshape"] = "tableshape/init.lua",
    ["tableshape.ext.json_schema"] = "tableshape/ext/json_schema.lua",
    ["tableshape.ext.luassert"] = "tableshape/ext/luassert.lua",
    ["tableshape.ext.with_args"] = "tableshape/ext/with_args.lua",
    ["tableshape.moonscript"] = "tableshape/moonscript.lua",
  }
}
