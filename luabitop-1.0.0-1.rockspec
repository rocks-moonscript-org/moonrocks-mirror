package="LuaBitOp"
version="1.0.0-1"
source = {
	url = "http://bitop.luajit.org/download/LuaBitOp-1.0.0.tar.gz",
	md5 = "3d03e53828b7657b295371b31130ab59"
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