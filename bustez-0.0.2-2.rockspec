rockspec_format = "3.0"
package = "bustez"
version = "0.0.2-2"
source = {
	url = "git+https://github.com/goldenstein64/bustez.git",
	dir = "bustez",
	tag = "v0.0.2",
}
description = {
	summary = "TestEZ injected into Busted",
	detailed = [[
    BustEZ injects Roblox's TestEZ syntax into the Busted library by 
    registering new assertions and modifiers and introducing an alternative 
    function to assert.
  ]],
	homepage = "https://github.com/goldenstein64/bustez",
	issues_url = "https://github.com/goldenstein64/bustez/issues",
	license = "MIT",
}
dependencies = {
	"lua >= 5.1",
	"luassert ~> 1.9",
	"say ~> 1.4",
}
build = {
	type = "builtin",
	modules = {
		["bustez.init"] = "bustez/init.lua",
		["bustez.expect"] = "bustez/expect.lua",
		["bustez.register"] = "bustez/register.lua",
	},
}
