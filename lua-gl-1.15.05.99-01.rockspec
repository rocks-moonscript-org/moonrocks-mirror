package ="lua-gl"
version = "1.15.05.99-01"
source = {
	url = "git://github.com/Deepak123bharat/lua-gl.git",
	tag = "1.15.05"
}
description = {
	summary = "To create a lua-gl using IUP",
	detailed = [[
		lua-gl is graphical library which allow easy creation of software like a schematic editor/flowchart creator/mind maps/block diagrams in Lua. library create basic mechanisms and graphic checks to create custom blocks and interconnections and provide an API to use these to create complex interactions.
	]],
	homepage = "#", 
}
dependencies = {
	"lua >= 5.2",
}
build = {
	type = "builtin",
	
	modules = {
		["lua-gl"] = "src/lua-gl.lua", 
		ClickFunctions = "src/ClickFunctions.lua", 
		createCanvas = "src/createCanvas.lua", 
		snap = "src/snap.lua", 
		tableUtils = "src/tableUtils.lua",
	}
}
