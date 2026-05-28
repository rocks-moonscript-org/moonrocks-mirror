package = "daemonparts"

version = "3.3-1"

description = {
	summary = "Unix service boilerplate",
	detailed = [[
		Daemonparts provides common - or 'boilerplate' - components
		for services that run on unix-like platforms. Modules include
		routines for validating configuration files, daemonization,
		forking child processes, logging, and signal processing.
	]],
	
	license = "MIT/X11",
	homepage = "https://zadzmo.org/code/daemonparts"
}

source = {
	url = "https://zadzmo.org/code/daemonparts/downloads/daemonparts-3.3.tar.gz"
}

dependencies = {
	"lua >= 5.4, < 5.5",
	"lunix",
	"cqueues"
}

build = {
	type = "builtin",
	modules = {
		["daemonparts.config_loader"] = "daemonparts/config_loader.lua",
		["daemonparts.corewait"] = "daemonparts/corewait/init.lua",
		["daemonparts.corewait.instance"] = "daemonparts/corewait/instance.lua",
		["daemonparts.corewait.signal"] = "daemonparts/corewait/signal.lua",
		["daemonparts.daemonize"] = "daemonparts/daemonize.lua",
		["daemonparts.output"] = "daemonparts/output/init.lua",
		["daemonparts.output.file"] = "daemonparts/output/file.lua",
		["daemonparts.output.descriptor"] = "daemonparts/output/descriptor.lua",
		["daemonparts.output.table"] = "daemonparts/output/table.lua",
		["daemonparts.output.syslog"] = "daemonparts/output/syslog.lua",
		["daemonparts.process"] = "daemonparts/process/init.lua",
		["daemonparts.process.monitor"] = "daemonparts/process/monitor.lua",
		["daemonparts.process.pool"] = "daemonparts/process/pool.lua"
	}
}

