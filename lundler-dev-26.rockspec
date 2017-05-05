package = "lundler"
version = "dev-26"
source = {
   url = "git://github.com/Romaboy/lundler.git"
}
description = {
   summary = "Resolve lua rocks with Rockfile",
   homepage = "https://github.com/Romaboy/lundler",
   license = "MIT",
   maintainer = "Roman Kushin <romadzao@gmail.com>"
}
dependencies = {
   "lua >= 5.1, < 5.4", "luafilesystem", "moonscript", "luasec"
}
build = {
	type = "builtin",
	modules = {
		lundler = "lua/lundler.lua"
	},
	install = {
		bin = { "lua/lundle" }
	}
}
