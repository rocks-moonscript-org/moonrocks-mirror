package = "lua-schema-validation"
version = "1.0-1"
source = {
   url = "git://github.com/erento/lua-schema-validation",
    tag = "v1.0"
}
description = {
   summary = "lua-schema-validation is a validation library for Lua.",
   detailed = [[
      This library helps to validate data by providing different validators which can be combined in a schema.

      Validators can be combined in any way, just be creative about it :) and feel free to contribute.
   ]],
   homepage = "https://github.com/erento/lua-schema-validation",
   license = "MIT"
}
dependencies = {
   "lua ~> 5.1"
}
build = {
   type = "builtin",
   modules = {
      validation = "src/validation.lua"
   }
}
