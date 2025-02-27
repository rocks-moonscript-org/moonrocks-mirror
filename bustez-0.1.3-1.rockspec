rockspec_format = "3.0"
package = "bustez"
version = "0.1.3-1"
source = {
	url = "git+https://github.com/goldenstein64/bustez.git",
	tag = "v0.1.3",
	dir = "bustez",
}
description = {
	summary = "TestEZ injected into Busted",
	detailed = [[
    BustEZ injects Roblox's TestEZ syntax into the Busted library by
    registering new assertions and modifiers and introducing an alternative
    function to assert.
  ]],
	homepage = "https://github.com/goldenstein64/bustez",
	license = "MIT",
	issues_url = "https://github.com/goldenstein64/bustez/issues",
}
dependencies = {
	"lua >= 5.1",
	"luassert ~> 1.9",
	"say ~> 1.4",
}
build = {
	type = "builtin",
	modules = {
		["bustez.expect"] = "src/bustez/expect.lua",
		["bustez.init"] = "src/bustez/init.lua",
		["bustez.register"] = "src/bustez/register.lua",
		["luassert.bustez.expect"] = "src/luassert/bustez/expect.lua",
	},
}
