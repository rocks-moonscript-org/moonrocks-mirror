package = "srplib"
version = "0.1.0-1"

rockspec_format = "3.0"

source = {
   url = "git://github.com/apechinsky/srplib.lua",
   tag = "v0.1.0"
}

description = {
   homepage = "https://github.com/apechinsky/srplib.lua",
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
      ["path"] = "src/path.lua"
   }
}
