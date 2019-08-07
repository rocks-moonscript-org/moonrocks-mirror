package = "Aurora"
version = "0.1-1"
source = {
   url = "git://github.com/kxmn/aurora", -- We don't have one yet
	 tag = "v0.1"
}
description = {
   summary = "A Lua function library to fill your tool set",
   detailed = [[
      Functions to fill the basic needs in filesystem handling, templating, string and math handling and much more.
   ]],
   homepage = "http://...", -- We don't have one yet
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
   -- We'll start here.
	type = "builtin",
	modules = {
		aurora = "init.lua",
		["aurora.fs"] = "fs/init.lua",
		["aurora.fs.basename"] = "fs/basename.lua",
		["aurora.fs.dirname"] = "fs/dirname.lua",
		["aurora.fs.getFileContents"] = "fs/getFileContents.lua",
		["aurora.fs.isDir"] = "fs/isDir.lua",
		["aurora.fs.isFile"] = "fs/isFile.lua",
		["aurora.fs.mkdir"] = "fs/mkdir.lua",
		["aurora.fs.putFileContents"] = "fs/putFileContents.lua",
		["aurora.httpserver"] = "httpserver/init.lua",
		["aurora.httpserver.pegasus.compress"] = "httpserver/pegasus/compress.lua",
		["aurora.httpserver.pegasus.file"] = "httpserver/pegasus/file.lua",
		["aurora.httpserver.pegasus.handler"] = "httpserver/pegasus/handler.lua",
		["aurora.httpserver.pegasus"] = "httpserver/pegasus/init.lua",
		["aurora.httpserver.pegasus.request"] = "httpserver/pegasus/request.lua",
		["aurora.httpserver.pegasus.response"] = "httpserver/pegasus/response.lua",
		["aurora.string"] = "string/init.lua",
		["aurora.string.split"] = "string/split.lua",
		["aurora.template"] = "template/init.lua",
	}
}
