rockspec_format = "3.0"
package = "premake-language-support"
version = "beta-8"
source = {
	url = "git+https://github.com/lolrobbe2/premake-lls-addon.git",
}
description = {
	summary = "LuaCATS annotations for Premake",
	detailed = "Auto Genrated LuaCATS annotations for premake5",
	homepage = "https://github.com/lolrobbe2/premake-lls-addon",
	license = "MIT",
}
dependencies = {
	"luarocks-build-lls-addon >= 0.1.0"
}
build = {
	type = "lls-addon",
	settings = {
		["runtime.version"] = "Lua 5.5",
		["runtime.builtin"] = {
			io = "disable",
			os = "disable",
		},
	},
}