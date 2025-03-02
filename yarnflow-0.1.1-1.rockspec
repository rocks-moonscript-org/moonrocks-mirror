rockspec_format = "3.0"
package = "Yarnflow"
version = "0.1.1-1"
source = {
	url = "git+https://github.com/ippclub/yarnflow"
}
description = {
	summary = "A Yarn Spinner compiler for Lua.",
	detailed = [[
		YarnFlow is an efficient compiler that translates Yarn Spinner scripts into Lua code, allowing you to seamlessly integrate interactive story elements from Yarn Spinner into Lua-based projects. Whether you're developing a game, an interactive app, or any Lua-powered project, YarnFlow simplifies the process of leveraging Yarn Spinner’s intuitive story-based scripting language with the power and flexibility of Lua.
	]],
	homepage = "https://github.com/ippclub/yarnflow",
	maintainer = "Li Jin <dragon-fly@qq.com>",
	labels = {"yarnflow","cpp","runtime","yarnspinner"},
	license = "MIT"
}
dependencies = {
	"lua >= 5.1",
}
build = {
	type = "cmake",
	variables = {
		LUA = "$(LUA)",
		LUA_INCDIR = "$(LUA_INCDIR)",
		CMAKE_BUILD_TYPE="Release"
	},
	install = {
		lib = {
			"build.luarocks/yarnflow.so"
		},
	}
}
