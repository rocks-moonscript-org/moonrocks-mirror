package = "MiniFS"
version = "1.1.3-1"
description = {
	summary = "Minimal library that heavily simplifies filesystem actions.",
	detailed = "MiniFS is a small library that simplifies filesystem actions with functions like fs.copy or fs.rename. It combines the power of LuaFileSystem, the standard I/O library and the standard OS library to create a powerful and extremely simple API",
	license = "MIT",
	homepage = "https://zatherz.gitlab.io/minifs",
	maintainer = "Dominik \"Zatherz\" Banaszak <zatherz@linux.pl>"
}

supported_platforms = {"unix", "windows"}
dependencies = {"luafilesystem"}

source = {
	url = "git+https://gitlab.com/Zatherz/minifs.git",
	tag = "1.1.3"
}

build = {
	["type"] = "none",
	install = {
		lua = {
			["minifs"] = "minifs.lua"
		}
	}
}


