package = "k-sway"
version = "0.1-1"
source = {
   url = "git://github.com/norcalli/lua-sway"
}
description = {
   homepage = "https://github.com/norcalli/lua-sway",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1, < 5.4",
	 "k-stream ~> 0.1",
	 "lua-cjson ~> 2.1",
	 "luaposix ~> 34.0",
	 -- "struct ~> 1.4", -- Optional
}
build = {
   type = "builtin",
   modules = {
      sway = "src/sway.lua"
   }
}
