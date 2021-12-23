package = "lpatch"
version = "1.0-1"
source = {
	url = "git://github.com/deflinhec/lua-patch",
}
description = {
	summary = "Patching, applying with lua variables",
	detailed = [[
Lua patch is a utility tool for creating patch between two Lua variables.
This patch can then be applied to another variable. All number values, expect
table keys, will be caculate and result with a delta offset within the patch.
String and boolean values will be update with the latest value, if there is
no different between two Lua variables, Lua patch returns with nil.
	]],
	homepage = "https://github.com/deflinhec/lua-patch",
	license = "MIT"
}
dependencies = {
	"lua >= 5.1"
}
build = {
	type = "builtin",
	modules = {
		ltdiff = "lpatch.lua"
	}
}