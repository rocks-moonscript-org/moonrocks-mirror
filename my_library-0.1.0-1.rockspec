package = "my_library"
version = "0.1.0-1"

rockspec_format = "3.0"

source = {
   url = "git://github.com/m00qek/library-template.lua",
   tag = "v0.1.0"
}

description = {
   homepage = "https://github.com/my_user/my_library.lua",
   license = "MIT"
}

dependencies = {
   "lua >= 5.1"
}

test_dependencies = {
    "busted",
    "luacheck",
    "matcher_combinators"
}

test = {
   type = "busted"
}

build = {
   type = "builtin",
   modules = {
      ["my_library"] = "src/my_library.lua"
   }
}
