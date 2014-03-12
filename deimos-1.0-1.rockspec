package = "deimos"

version = "1.0-1"

description = {
	summary = "Deimos Strong Typing System",
	detailed = [[
		Deimos is a strongly typed object system: Deimos objects
		have a defined schema which allows it to validate data. Schemas
		are defined in the syntax of Lua itself. Errors are thrown if
		data being tested doesn't conform to the schema, and validated
		data can be manipulated as if ordinary Lua tables.
	]],
	
	license = "MIT/X11",
	homepage = "https://syn.zadzmo.org/deimos"
}

source = {
	url = "https://syn.zadzmo.org/deimos/downloads/deimos-1.0.tar.gz"
}

dependencies = {
	"lua >= 5.1"
}

build = {
	type = "builtin",
	modules = {
		["deimos"] = "deimos.lua",
		["deimos.class"] = "deimos/class.lua",
		["deimos.hash"] = "deimos/hash.lua",
		["deimos.array"] = "deimos/array.lua",
		["deimos.utility"] = "deimos/utility.lua"
	}
}
