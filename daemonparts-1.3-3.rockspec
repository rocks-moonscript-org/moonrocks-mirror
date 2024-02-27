package = "daemonparts"

version = "1.3-3"

description = {
	summary = "Unix service boilerplate",
	detailed = [[
		Daemonparts provides common - or 'boilerplate' - components
		for services that run on unix-like platforms. Modules include
		routines for locating configuration files, daemonization,
		forking child processes, logging, and recycling the entire
		service.
	]],
	
	license = "MIT/X11",
	homepage = "https://zadzmo.org/code/daemonparts"
}

source = {
	url = "https://zadzmo.org/code/daemonparts/downloads/daemonparts-1.3.tar.gz"
}

dependencies = {
	"lua >= 5.3, < 5.5",
	"lunix",
	"cqueues"
}

build = {
	type = "builtin",
	modules = {
		["daemonparts.config"] = "daemonparts/config.lua",
		["daemonparts.daemonize"] = "daemonparts/daemonize.lua",
		["daemonparts.output"] = "daemonparts/output.lua",
		["daemonparts.output.file"] = "daemonparts/output/file.lua",
		["daemonparts.output.descriptor"] = "daemonparts/output/descriptor.lua",
		["daemonparts.output.table"] = "daemonparts/output/table.lua",
		["daemonparts.output.syslog"] = "daemonparts/output/syslog.lua",
		["daemonparts.process"] = "daemonparts/process.lua",
		["daemonparts.recycle"] = "daemonparts/recycle.lua",
		["daemonparts.signals"] = "daemonparts/signals.lua"
	}
}

