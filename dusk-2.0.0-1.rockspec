-- vim: ft=lua
package = "dusk"
version = "2.0.0-1"
source = {
	url = "git+https://github.com/felix-kyun/dusk.git",
	tag = "v2.0.0",
}
description = {
	homepage = "https://github.com/felix-kyun/dusk",
	summary = "A rich text formatting library",
	license = "MIT"
}
dependencies = {
}
build = {
	type = "builtin",
	modules = {
		dusk = "dusk.lua"
	}
}
