package = "Aurora"
version = "0.2-1"
source = {
	url = "git+https://github.com/kxmn/aurora",
	tag = "v0.2",
}
description = {
   summary = "A Lua function library to fill your tool set",
   detailed = [[
      Functions to fill the basic needs in filesystem handling, templating, string and math handling and much more.
   ]],
   homepage = "http://kxmn.github.io/aurora",
   license = "MIT" -- or whatever you like
}
dependencies = {
   "lua >= 5.3",
   "luafilesystem >= 1.7.0-2",
	 "luasocket >= 3.0rc1-2",
	 "lua-cjson = 2.1.0-1",
	 "lzlib >= 0.4.1.53-1",
	 "mimetypes 1.0.0-2"
}

build = {
	type = "builtin",
	modules = {

		["aurora.fs.basename"]="src/fs/basename.lua",
		["aurora.fs.dirname"]="src/fs/dirname.lua",
		["aurora.fs.getFileContents"]="src/fs/getFileContents.lua",
		["aurora.fs"]="src/fs/init.lua",
		["aurora.fs.isDir"]="src/fs/isDir.lua",
		["aurora.fs.isFile"]="src/fs/isFile.lua",
		["aurora.fs.mkdir"]="src/fs/mkdir.lua",
		["aurora.fs.setFileContents"]="src/fs/setFileContents.lua",
		["aurora.httpserver"]="src/httpserver/init.lua",
		["aurora.httpserver.pegasus.compress"]="src/httpserver/pegasus/compress.lua",
		["aurora.httpserver.pegasus.file"]="src/httpserver/pegasus/file.lua",
		["aurora.httpserver.pegasus.handler"]="src/httpserver/pegasus/handler.lua",
		["aurora.httpserver.pegasus"]="src/httpserver/pegasus/init.lua",
		["aurora.httpserver.pegasus.request"]="src/httpserver/pegasus/request.lua",
		["aurora.httpserver.pegasus.response"]="src/httpserver/pegasus/response.lua",
		["aurora"]="src/init.lua",
		["aurora.string"]="src/string/init.lua",
		["aurora.string.split"]="src/string/split.lua",
		["aurora.template"]="src/template/init.lua",
	}
}

