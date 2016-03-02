package = "nozzle"

version = "0.0.1-1"

description = {
	summary = "Filters and pipes to be used with Orbit applications (and more)",
	detailed = [[
Nozzle is a Lua library that allows to write filters and chain them together into pipelines.
]],
	license = "MIT/X11",
	homepage = "http://github.com/ignacio/nozzle"
}

dependencies = {
	"lua >= 5.1"
}

source = {
	url = "https://github.com/ignacio/nozzle/archive/v0.0.1.tar.gz",
	dir = "nozzle-0.0.1"
}

build = {
	type = "none",
	install = {
		lua = {
			nozzle = "src/nozzle.lua",
			["nozzle.generic"] = "src/nozzle/generic.lua",
			["nozzle.helpers"] = "src/nozzle/helpers.lua",
			["nozzle.stock"] = "src/nozzle/stock.lua"
		}
	}
}
