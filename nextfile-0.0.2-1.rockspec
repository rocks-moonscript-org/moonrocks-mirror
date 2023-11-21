package = "nextfile"
version = "0.0.2-1"

source = {
	url = "git+https://git.themagician.cc/TheMagician/nextfile.git",
	tag = "v0.0.2"
}

description = {
	summary = "A library for getting the next file in a sequence.",
	detailed = [[
	nextfile is a small Lua library for generating the next file in a sequence of files.
	It was developed for use with tools that export sections of a video as images, and need to be able to name files sequentially without having generated all of the previous files themselves.
	]],
	homepage = "https://themagician.cc/TheMagician/nextfile",
	license = "The Unlicence"
}

dependencies = {
	"lua >=5.1, <= 5.4",
	"luafilesystem"
}

build = {
	type = "builtin",
	modules = {
		prevfile = "src/prevfile.lua",
		nextfile = "src/nextfile.lua"
	}
}
