#!/usr/bin/env lua

package	= "lua-busmt-if"
version	= "0.1.0-0"
source	= {
	url	= "git://cloud.lmks.ru:30000/v_romashkin/buscord.git",
	--module = "busmt-if",
	--branch = "v0.1.1",
}
description	= {
	summary    = "A simple API to use Bus-MT",
	detailed   = [[
LuaBusMT provides a simple API to use Bus-MT features in Lua.
This is module with high level interface to Bus-MT.
Currently supports ...
	]],
	homepage   = "https://cloudlocal.lmks.ru:30000/v_romashkin/buscord",
	maintainer = "Gregory Trifonov, Vladimir Romashkin"
	--license	= "MIT/X11",
}
dependencies = {
	"lua >= 5.1",
	--"luajit >= 2.0.0",
	"lua-pb",
	--"paths >= scm-1", -- use module from torch
}
build = {
	type = "none",
	install = {
		lua = {
			-- adding to the root of LuaRocks' modules directory (<...>/share/lua/5.1/)
			-- file paths ralated to root of repository
			['busmt-if'] = "busmt-if/src/busmt-if.lua",
			-- copy files to 'busmt-if' subfolder
			['busmt-if.busmt-if'] = "busmt-if/src/busmt-if/busmt-if.h",
		},
		lib = {
			['busmt-if'] = "busmt-if/lib/libbusmt-client.so"
		},
	},
}