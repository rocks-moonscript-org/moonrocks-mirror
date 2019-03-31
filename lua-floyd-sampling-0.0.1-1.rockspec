package = "lua-floyd-sampling"
version = "0.0.1-1"

source = {
   url = "git://github.com/sjnam/lua-floyd-sampling",
   tag = "v0.0.1"
}

description = {
   summary = "a sample of brilliance",
   license = "Public Domain",
   homepage = "https://github.com/sjnam/lua-floyd-sampling",
   maintainer = "Soojin Nam <jsunam@gmail.com>"
}

dependencies = {
   "lua-rbtree == 0.0.2"
}

build = {
   type = "builtin",
   modules = {
      ["floyd"] = "floyd.lua"
   }
}
