package="LuaBitOp"
version="1.0.1-1"
source = {
	url = "http://bitop.luajit.org/download/LuaBitOp-1.0.1.tar.gz",
	md5 = "39984456940aea838e0f500bececbd73"
}
description = {
	summary = "Lua Bit Operations Module",
	detailed = [[
Lua BitOp is a C extension module for Lua 5.1 which adds bitwise operations on numbers. 
Lua BitOp is Copyright © 2008 Mike Pall. Lua BitOp is free software, released under the MIT/X license (same license as the Lua core).
]],
	homepage = "http://bitop.luajit.org/",
	license = "MIT/X license"
}

dependencies = { "lua >= 5.1" }

build = {
	type = "module",
	modules = {
		bit = {
			sources = {"bit.c"}
		}
	}
}