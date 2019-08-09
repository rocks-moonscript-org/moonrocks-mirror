package = "Kosmo"
version = "0.2-1"
source = {
   url = "git://github.com/kxmn/kosmo",
	 tag = "v0.1"
}
description = {
   summary = "A Lua framework",
   detailed = [[
      Functions to fill the basic needs in filesystem handling, templating, string and math handling and much more.
   ]],
   homepage = "http://kxmn.github.io/kosmo",
   license = "MIT"
}
dependencies = {
   "lua >= 5.3",
   "luafilesystem >= 1.7.0-2",
	 "luasocket >= 3.0rc1-2",
	 "lua-cjson = 2.1.0-1",
	 "lzlib >= 0.4.1.53-1",
	 "mimetypes 1.0.0-2",
	 "aurora >= 0.1"
}

build = {
	type = "builtin",
	modules = {

		["kosmo.configure"]="src/configure.lua",
		["kosmo"]="src/init.lua",
		["kosmo.install"]="src/install.lua",
		["kosmo.template"]="src/template.lua",
	}
}

