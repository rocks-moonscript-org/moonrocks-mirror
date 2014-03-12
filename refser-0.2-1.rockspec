package = "refser"
version = "0.2-1"
source = {
	url = "git://github.com/lua4web/refser.git",
	tag = "v0.2"
}
description = {
	summary = "yet another Lua table serialization library",
	detailed = [[refser is yet another Lua table serialization library mostly written in C++. 

Features:

* Can save and load nil, booleans, numbers, strings, tables and tuples of them. 
* Output is endian-portable and binary safe. 
* Recursive tables and cross-references are handled correctly. 
* Options to restrict saved and loaded data at run-time. 
* Options to persist context across several operations. 
]],
	homepage = "http://github.com/lua4web/refser",
	license = "MIT/X11"
}
dependencies = {
	"lua >= 5.1, < 5.3",
	"luarocks-build-cpp"
}
build = {
	type = "cpp",
	modules = {
		refser = "refser.lua",
		["refser.crefser"] = {
			sources = {
				"src/crefser.cpp",
				"src/lua.cpp",
				"src/writer.cpp",
				"src/fixbuf.cpp",
				"src/saver.cpp",
				"src/loader.cpp"
			},
			incdirs = "src/"
		},
		["refser.auxiliary"] = {
			sources = {
				"src/auxiliary/auxiliary.c"
			},
			incdirs = "src/auxiliary/"
		}
	},
	copy_directories = {}
}
