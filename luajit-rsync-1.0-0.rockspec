package = "luajit-rsync"
version = "1.0-0"
source = {
	url = "https://bitbucket.org/senanetworksinc/luajit-rsync/raw/fab4ff49534217534893e5a42f733e1ae15dd851/luajit-rsync-1.0-0.tar.gz",
}
description = {
	summary = "An librsync porting.",
	detailed = [[
		"librsync" porting for lua
		https://github.com/librsync/librsync
	]],
	homepage = "https://bitbucket.org/senanetworksinc/luajit-rsync",
	license = "MIT/X11"
}
dependencies = {
}
build = {
	type = "cmake",
	variables = {
	},
	install = {
		lua = {
			["luajit-rsync"] = "./luajit-rsync.lua",
			["luajit-rsync.base64"] = "./luajit-rsync/base64.lua",
			["luajit-rsync.c"] = "./luajit-rsync/c.lua",
			["luajit-rsync.cdef"] = "./luajit-rsync/cdef.lua",
			["luajit-rsync.hexify"] = "./luajit-rsync/hexify.lua",
			["luajit-rsync.log"] = "./luajit-rsync/log.lua",
			["luajit-rsync.mdfour"] = "./luajit-rsync/mdfour.lua",
			["luajit-rsync.signature"] = "./luajit-rsync/signature.lua",
			["luajit-rsync.strerror"] = "./luajit-rsync/strerror.lua",
			["luajit-rsync.trace"] = "./luajit-rsync/trace.lua",
			["luajit-rsync.unbase64"] = "./luajit-rsync/unbase64.lua",
		}
	}
}
