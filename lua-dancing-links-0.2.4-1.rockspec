package = "lua-dancing-links"
version = "0.2.4-1"

source = {
   url = "git://github.com/sjnam/lua-dancing-links",
   tag = "v0.2.4"
}

description = {
   summary = "Lua implementation of Donald Knuth's Algorithm 7.2.2.1C for exact cover with colors",
   license = "Public Domain",
   homepage = "https://github.com/sjnam/lua-dancing-links",
   maintainer = "Soojin Nam <jsunam@gmail.com>"
}

build = {
   type = "builtin",
   modules = {
      ["dlx"] = "dlx.lua"
   }
}
