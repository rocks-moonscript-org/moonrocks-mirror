package = "lcolorize"
version = "1.0-1"

source = {
	url = "http://test.mk16.de/scriptFiles/lcolorize.lua",
	tag = "v1.0"
}

description = {
	summary = "Colors text in an IO stream.",
	detailed = [[
		lcolorize colors text in an IO stream.
		For example, the text on the console can be colored.
		Note: This tool may not work under the Windows platform.
	]],
	homepage = "http://test.mk16.de/projects/lcolorize-1.0",
	license = "GNU GPL v3"
}

build = {
	type = "builtin",
	
	modules = {
		lcolorize = "lcolorize.lua"
	}
}