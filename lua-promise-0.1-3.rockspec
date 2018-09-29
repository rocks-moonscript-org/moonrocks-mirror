package = "lua-promise"
version = "0.1-3"

source = {
	url = "https://github.com/hjmmc/lua-promise/archive/0.1-3.tar.gz",
	dir = "lua-promise-0.1-3"
}

description = {
	summary = "promise(A+) for lua. like ES6",
	homepage = "https://github.com/hjmmc/lua-promise",
	license = "MIT"
}

dependencies = {
	"lua >= 5.1"
}

build = {
	type = "builtin",
	modules = {
		["lua-promise"]  = "lua-promise.lua"
	}
}