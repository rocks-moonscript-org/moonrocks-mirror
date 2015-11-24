#!/usr/bin/env lua

package	= "lua-netudpif"
version	= "0.1-0"
source	= {
	url	= "git://cloud.lmks.ru:30000/v_romashkin/buscord.git",
	dir = "net-udp-if",
}
description	= {
	summary    = "Multythreaded UDP interface",
	detailed   = [[
LuaNetUdp provides a simple API to use UDP protocol in Lua.
This module is multythreaded version of LuaSocket and uses
'torch/threads' package.
Currently supports ...
	]],
	homepage   = "https://cloud.lmks.ru:30000/v_romashkin/buscord",
	maintainer = "Vladimir Romashkin"
	--license	= "MIT/X11",
}
dependencies = {
	"lua >= 5.1",
	"luv ~= 1.7",
	--"luajit >= 2.0.0",
	--"paths >= scm-1", -- use module from torch
}
build = {
	type = "command",
	install_command = [[
cp -r netudpif $(LUADIR)
	]],
	copy_directories = {
		"test",
	},
}
