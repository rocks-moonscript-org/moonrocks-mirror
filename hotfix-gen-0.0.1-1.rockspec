package = "hotfix-gen"
version = "0.0.1-1"
source = {
   url = "git+https://github.com/luyuhuang/hotfix-gen.git"
}
description = {
   summary = "Hotfix code generator for Lua",
   detailed = "Hotfix code generator for Lua",
   homepage = "https://github.com/luyuhuang/hotfix-gen",
   license = "MIT"
}
dependencies = {
   "lua ~> 5.3",
   "lpeglabel >= 1.6.0"
}
build = {
   type = "builtin",
   modules = {
      ["hotfix-gen.init"] = "hotfix-gen/init.lua",
      ["hotfix-gen.lua-parser.parser"] = "hotfix-gen/lua-parser/parser.lua",
      ["hotfix-gen.lua-parser.pp"] = "hotfix-gen/lua-parser/pp.lua",
      ["hotfix-gen.lua-parser.scope"] = "hotfix-gen/lua-parser/scope.lua",
      ["hotfix-gen.lua-parser.validator"] = "hotfix-gen/lua-parser/validator.lua"
   },
   install = {
      bin = {"hotfix"}
   }
}
