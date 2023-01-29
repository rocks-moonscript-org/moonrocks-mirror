rockspec_format = "1.0"
package = "icu"
version = "0.0.0-0"

source = {
   url = "git+https://github.com/alerque/icu-lua.git",
   dir = "icu-lua",
   tag = "v0.0.0"
}

description = {
   summary = "Lua bindings for ICU",
   detailed = [[Full access to ICU4C functions from Lua]],
   license = "MIT/ICU",
   homepage = "https://github.com/alerque/icu-lua",
}

dependencies = {
   "lua >= 5.1"
}

build = {
   type = "builtin",
   modules = {
   }
}
