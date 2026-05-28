-- vim: ft=lua
package = "dusk"
version = "1.0-4"
source = {
	url = "https://github.com/felix-kyun/dusk/archive/refs/tags/v1.0.zip"
}
description = {
	homepage = "https://github.com/felix-kyun/dusk",
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
