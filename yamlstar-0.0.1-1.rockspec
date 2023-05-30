rockspec_format = "3.0"
package = "yamlstar"
version = "0.0.1-1"
source = {
   url = "git+https://github.com/yaml/yamlstar",
   branch = "devel",
   dir = "lua"
   -- tag = "lua-0.0.1"
}
description = {
   summary = "A cross-language, common API YAML reference framework",
   homepage = "https://github.com/yaml/yamlstar/",
   maintainer = "Ingy döt Net <ingy@ingy.net>",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1, < 5.5"
}
build = {
   type = "builtin",
   modules = {
      ["yamlstar"] = "lib/yamlstar.lua"
   }
}
