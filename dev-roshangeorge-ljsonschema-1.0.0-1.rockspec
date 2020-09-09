package = "dev-roshangeorge-ljsonschema"
version = "1.0.0-1"
source = {
   url = "git://github.com/roshan/dev-roshangeorge-ljsonschema.git",
   tag = "1.0-rg",
}
description = {
   summary = "JSON Schema data validator",
   detailed = [[
This module is  data validator the implements JSON Schema draft 4.
Given an JSON schema, it will generate a validator function that can be used
to validate any kind of data (not limited to JSON). Forked from
https://github.com/Tieske/lua-resty-ljsonschema
]],
   homepage = "https://github.com/roshan/lua-resty-ljsonschema",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1",
   "net-url",
}
build = {
   type = "builtin",
   modules = {
      ["resty.ljsonschema.init"] = "src/resty/ljsonschema/init.lua",
      ["resty.ljsonschema.store"] = "src/resty/ljsonschema/store.lua",
      ["resty.ljsonschema.metaschema"] = "src/resty/ljsonschema/metaschema.lua",
   }
}
