package = "chatter"
version = "0.1.0-1"

source = {
   url = "git+https://codeberg.org/jtbx/chatter",
   tag = "v0.1.0-1"
}

description = {
   summary = "A simple Matrix SDK for Lua.",
   detailed = "A simple Matrix SDK for Lua.",
   homepage = "https://codeberg.org/jtbx/chatter",
   license = "GPL"
}

dependencies = {
	"lua-cjson >= 2.1.0.10-1",
	"luasocket >= 3.1.0-1"
}

build = {
   type = "builtin",
   modules = {
      chatter = "lua/chatter.lua"
   }
}
